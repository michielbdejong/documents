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

## Goal: MVP
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
* (M) set up mail forwards
* add a statics+git-hook image
* (P) Pierre to update to https and to confd for his live sites
* Michiel to update to confd for his live sites
* automatic failover (DNS round-robin static sites)


Sprint 2 (starting when sprint 1 completes)
===============

## Goal: First paying customers
This sprint is more about organization and marketing than the previous one. Now that we
have our MVP, we will start selling it!

## Steps:
* design our website
* open up for business (IndieGoGo? pickandboost?)


Sprint 3 (starting when sprint 2 completes)
===============

## Goal: Application hosting
Until now, we have only hosted static sites which are easy to host, both in terms of
fail-over and of data recovery.

## Steps:
* add more images for main site (incl. mysql master-master)
* add backups
* make multi-application usage practical (either get 50 different startssl certs (allowed?) or iframe to ports).
* add images for other applications
