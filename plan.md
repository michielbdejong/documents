### Goals for Mon 27 Oct:

* P: add some more alpha testers on WordPress
* P: add website signup using wordpress newsletter plugin
* P: merge haproxy-logging work into master
* M: build & review website
* M: put github pull in systemd-equivalent of crontab
* M: update live server to latest master

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
* [ ] (M) put github pull in systemd-equivalent of crontab

Sprint 2 (starting when sprint 1 completes)
===============

## Goal: Get followers

## Steps:
* [x] (P) design our website
* [ ] (M+P) each set up one server running the MVP, launch website
* [ ] (M+P) connect with opinion leaders


Sprint 3 (starting when sprint 2 completes)
===============

## Goal: Crowdfunding
