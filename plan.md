# proposed plan for Wed 5 Nov:

* immigration was moved forward from 0.3 to 0.2, because this is now easy
* so i added an extra target of more lamp images already to the 0.3 milestone https://github.com/indiehosters/indiehosters/milestones 
* finish refactor:
  * (M+P) move TLS certs location to /data/domains
  * (M+P) make backup job back up all of /data/domains/$DOMAIN/ uniformly, with a PreStart for the mysql dump
  * (?) rename /services to /backends in etcd
  * (?) rename importers to init, make them all inline scripts
  * (?) adapt deploy script to use immigrations, review repo contents for stuff that can be removed
  * (M+P) prepare blogpost about 0.2 release for tomorrow
  * (M+P) update docs
  * (M+P) tag 0.2 (see https://github.com/indiehosters/indiehosters/milestones)
* (M+P) prepare blogpost about postfix forwarder
* images are pulled on first use, not at server setup (just remove those lines from setup.sh

# stand-alone products:

* the IndieHosters repo as a whole
* the postfix-forwarder (worth a blog post!)
* niche lamp images identical to tutum/wordpress-stackable - auto-initializing and with instructions for linking to mysql
