# What our product is


## Market we're in: personal server hosting

At the most basic level, our product is personal server hosting. This
splits roughly into webhosting/own your identity (personal website) and
application hosting/own your data (personal cloud).


## Our main selling point: migration-oriented

We are a decentralized network of autonomous cells. That is what makes us
resilient. Our infrastructure should be migration-oriented, and easy to copy
(easy to start a node and well-documented how to run it).


## The user experience: that of the third-party product

We stay in the background, and don't offer inferior options. Users do not get to see the internals. Our control panel is minimal, and only there for data import, data export, and billing (choosing/upgrading/cancelling product).
The user interacts directly with the admin interface of the product we host for them. We just do the hosting.
We don't develop software, we use free and open source software from elsewhere.
IndieHosters is a franchise, meaning there is only one brand, but each IndieHoster has their own customer base, for whom they host and do tech support from the
moment a user immigrates to the moment a user emigrates. When an IndieHoster retires, all their customers are divided over other IndieHosters. Any prepaid credit they had stays on their account.


## Social responsibility

We aim to support the decentralized internet, and will always try to support
niche applications and protocols to reach the install base they deserve.

Our blog will also act as a magazine where interested users can read about new
decentralized technologies and how to use them. Wherever possible, we will roll
out all non-invasive products to all users in dormant mode, ready to be
activated when the user tries to use it for the first time.


# What we should therefore focus on

## For migration-oriented hosting

### Running a node where you would want to host your own site

* backups (nearly done)
* sms alerts when something goes wrong
* a hot spare to switch to when needed
* control over the DNS of all domains we host (easydns for now)

### Getting better at migrations

* try out how long it takes us to migrate all domains from one node
  to another and back.
* run lukewarm spares for each other, so that a user can always get to
  their data if their IndieHoster stops cooperating with them.
* have some user-facing page explaining how they can migrate, should
  they, at any point, want to.

### Offer products people really want

* Starbucks testing
* user interviews
* study the competition
* advertising through the communities of the projects we host

### Easy entry for hosters (whether certified or not)

* run not only on coreos but also on ubuntu 14.10 (vagrant is only for dev)
* keep documentation up to date in each release
* clear cycle of well-tested releases, keep user data compatible
* small, well-documented, easy to read code. Minimize surprises and puzzles
* documentation should not also cover server setup, but also CRM and monitoring

### Easy for outsiders (or upstreams) to add new products

* Document what the Docker image should look like
* No application-specific systemd code (only the Docker image should change)
* For multi-process applications, use multiple Docker images (e.g. db server,
  cron jobs). We should document exactly how to add a cron job to an application
  (like the gitpuller for static-git), and have one guide per platform (lamp,
  ruby, node, python, ...).
