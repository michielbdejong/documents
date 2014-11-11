# Hoster-facing product: IndieHosters docs and scripts

## General

* Usable by any experienced sysadmin
* Reasonably automated, and well-documented where not
* The documentation starts from scratch and works as a manual, explaining all tasks

## System requirements for hosting servers

* CoreOS or Ubuntu 14.10 (a Vagrantfile is also provided for testing locally)
* instructions for installing the dependencies, which are:
  * bash
  * git
  * docker
  * systemd

## System requirements for backup servers

* ssh
* git

## Other services required

* a wingman for second backup
* monitoring with sms
* namecheap account with API key

# User-facing product:

## Technical specification
* domain name, renewed yearly
  * the user is the owner and admin contact
  * the hoster is the tech contact
  * nameservers point to nameservers controlled by the hoster and his wingman
* ssl certificate, renewed yearly
* email forwarding, catch-all to the secondary email address
* containerized web hosting behind SNI offloader
* http redirects to https
* choice of WordPress-with-IndieWeb-plugins or Known as the CMS

## Services offered
* billing and tech support via email
* hourly backups with option to rollback to any point in time
* option to switch to wingman at any time
* option to export user-data at any time, as zipped up git repo
* option to switch between WordPress and Known at any time
* option to import from zip file at any point
* regular automated updates to latest version of chosen CMS
