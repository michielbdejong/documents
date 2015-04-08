# core tools

This is a draft (initially by @michielbdejong, but let's work on this together) of how we can split up our core tools.
I tried to make it technology-agnostic. So 'minion' might be salt-minion, and 'docker-activator' might be a systemd-unit.
Or they might both be nodejs applications. This should be a swappable choice per core tool, so that we can make each core tool
stand on its own and excel at what it does (and hopefully reuse existing work where it exists).

For now I'm prototyping each of these tools in nodejs. We can switch in the future as we measure how these prototypes perform,
and decide on a per-tool basis.

## Basic install script / server image

This installs the following things on a VM:

* the OS (obviously),
* minion (on the host, see below),

And then minion installs (these may already be present on a binary image):

* docker (I think we agree on that),
* docker-activator (see below),
* a stopped container with snitch-proxy (see below),
* a stopped container with coyote-crm (see below)
* a stopped container with coyote-listener (see below)
* a stopped container with a DNS server
* a stopped container with a mail server
* a stopped container with an XMPP server


By default, the server runs an empty coyote-crm web interface as its only web service. The admin needs to log in to activate the server (set up alarms and API keys, and at least one buddy server) and open it up for signups. When it receives a signup on the coyote-crm web interface, it will automatically provision it locally.

If you deploy a new server from an existing one, the existing server will configure it and add it to its cluster. A server can always break
away from its cluster, as long as it keeps at least one buddy somewhere.

# coyote-crm

A simple web interface that writes the minion-specs to disk, and reads stats from disk. The minion process on the server sees the new
desired state, and brings the server into that state. The various services on the server can write stats so they get displayed.

````
minion-spec      ->
json-stats       -> coyote-crm
````

# coyote-listener

When you tell minion to create a new server, that new server is added to the current cluster in mesh, and each server will be available
for service backup/failover to, and monitor the status of, each other server in the cluster.
You can also link to someone else's server by contacting its coyote-listener with a "coyote request"
(which will challenge you to make sure the request is legit).
This way, you can monitor its status (it may refuse), request it to be backup or failover (it may refuse),
and request to switch authority (it may refuse) for a service.
A failover will take control if both the service and its DNS zone are unreachable, whereas
a backup will maybe send out an alarm, but always wait for instructions from either its own coyote-crm or its coyote-listener before switching
authority to itself. A service can have multiple backups, but should only ever have one failover, which is like the primary backup:

````
* master
========
* failover
* backup
* backup
* backup
* backup
* ...
````

As a security measure, and to force ourselves to keep the design decentralized, coyote-listener will only accept requests to begin/stop being backup/failover for a service, and requests to switch authority. It will only accept these requests if it's configured to through its local coyote-crm instance.

New signups from the webshop are posted to the coyote-crm instance of the server that will host them (in fact, the whole buying pipeline can be
part of the coyote-crm web interface).

# minion

The minion runs on one server, to make sure that that server either reaches the state the crm asked for, or sends out an alarm.

The actuators are the scripts that the minion uses to execute the tasks we automate (update a config, send an email, make an API call, ...)

````
minion-repos     ->
minion-backends  ->
minion-snickers  ->
minion-mailconf  ->
minion-xmppconf  ->
minion-dnsconf   ->
minion-vultr     ->
minion-namecheap ->
minion-mailer    -> minion-actuators ->
                    minion-spec      ->
                    alarms           -> minion
````

> # minion-minion
> 
> minion-minion could in the future initiate automated migrations in response to usage stats.
> For now, this needs to be done manually through coyote-crm, in response to alarms or stats.

# snitch-proxy

This is the proxy, gets and stores the certs, and offloads SNI.

````
node-letsencrypt -> node-snitch ->
spdy                            ->  snickers-proxy
node-proxy                      ->
relay-interceptor               ->
json-stats                      ->
config-reader                   ->
````

# docker-activator

Starts and stops containers (in response to memory usage), triggers them to dump their state, and writes traffic stats

````
dockerode -> docker-activator
````

Right now, snitch-proxy and docker-activator are still united in one snickers-proxy, but this has two problems:

* we can only socket-activate services that are behind the proxy, not server-wide services.
* it all runs in the same thread, meaning it only uses one CPU core.
* if one crashes or restarts, the other also loses its memory / connections state.
* we cannot readily upgrade or replace the individual two parts.
