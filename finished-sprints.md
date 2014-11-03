Sprint 0 (1 Oct - 12 Oct)
===============
## Status: Complete
## Goal: Basic infrastructure
Based on the ideas we have been gathering before our official start date,
agree on a common infrastructure for our hosting setup.

## Steps:
* discuss what technology we want to use
* Write a setup script using docker, systemd, etcd, and confd on coreos
* Get haproxy working with SNI in front of multiple applications
* Get wordpress+mysql and nginx working with automated blueprint import
* Set up basic best-practice instructions of how to manage servers, certs, data
* Set up deploy system combining infrastructure, dockerfiles, and dev-scripts

Sprint 1 (starting 13 Oct)
===============
## Status: Started
## Goal: MVP
In this sprint we will complete our MVP consisting of:
- a domain name
- a DNS zone
- a TLS cert
- static file hosting (updateable through git hook)
- email forwarding
- redundancy on two independent IndieHosters, through DNS round-robin and MX fallback
- instructions on how to duplicate our stack on your own server
- instructions on how to migrate your domain and site to your own server

## Steps:
* [x] (P) Add logging to haproxy (so we can be aware of 503 errors)
* [x] (M) set up mail forwards
* [x] (M) add a statics+git-hook image
* [x] Pierre to update to https and to confd for his live sites
* [x] Michiel to update to confd for his live sites
* [x] automatic failover (DNS round-robin static sites)
* [x] (M) put github pull in systemd-equivalent of crontab
* [x] Update our servers and DNS zones
* [x] Tag 0.1.0 on gh:indiehosters/indiehosters

Sprint 2 (starting 30 Oct)
===============

### First feedback round

* launch the website
* get feedback from own friends (tech alphas, end users, whoever)
* compare and incorporate first feedback round
