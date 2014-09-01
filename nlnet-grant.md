# IndieHosters - Hosting for freedom, not for profit

## 0. Lemma

In this application for an [NLnet](http://nlnet.nl/) grant, we'll speak about a subcategory of Free and Open Source Software, FOSS. We'll speak about the ones that provide Internet applications. For instance, [wordpress](http://wordpress.org/), [postfix](http://www.postfix.org/), and [ejabberd](http://www.process-one.net/en/ejabberd/) are Free and Open Source Internet Applications, FOSIAs.

We'll also speak about people or companies that provide hosting services for these Internet applications. For instance, [Gandi](https://www.gandi.net/), [OVH](https://www.ovh.com/), [riseup](https://riseup.net/), [ecobytes](http://ecobytes.net/about) and myself at home with a [Raspberry Pi](http://www.raspberrypi.org/), are Hosting Service Provider, HSP. These people have a common objective of hosting some kind of store (or marketplace) to allow their end user to choose between their applications. We understand store as defined by the [IndieWeb community](http://indiewebcamp.com/store). This document explains the state of the art of creating such a store, with the creation of a standard FOSIA manifest file. Here is our definition of a FOSIA manifest file: (inspired by [IndieWeb manifest definition](A manifest or app manifest is a file that provides information about a web app, like name, description, icons, developer/author.)):

```
A FOSIA manifest file provides information about that application, e.g. name, description, icons, developer/author.
It also describes its dependencies, and the associated data created during runtime.
```

## 1. Project plan

The project aims to build a network of independent HSPs of FOSIA. We call this network IndieHosters.

The first goal is to define a standard FOSIA manifest. It will allow any user of any store to migrate his application instance easily from one store to another.

The second goal is to write this manifest file for most used FOSIA. This work will primary be aimed at personal [indie websites](http://indiewebify.me/) and personal data servers. And then, we believe that the standard will be adopted by the FOSIA community.

The third goal is to make an implementation of a basic FOSIA store. It will allow us and experienced system administrators to start our own HSP.

The fourth and main goal is to develop a network of independent HSPs. We believe that local and small-scale HSPs are the way to fight against the ongoing gravitation of infrastructure and power to the "center" of the Internet, e.g., Google, Facebook. And we believe it is the right time to do it, for three reasons:
- people are ever more aware of the need to [redecentralize](http://redecentralize.org/) the Internet
- automation tools start to be mature
- hardware is ever cheaper

These automation tools will allow us to build blazing simple store, for powerful and resilient HSPs. And more importantly, users will be free to migrate their data and applications between stores.

### 1.1. The problem solved by this project

Let's say, there is a bug on the Internet, e.g., Google Docs is spying on private documents. Software engineers have power to resolve bugs. If they want to solve this particular bug, they write a FOSIA, e.g., [etherpad](http://etherpad.org/). People will install the source code on their server, bug solved! But most people online don't know what a server is and even less, what source code means. Did you realize that if you go to many FOSIA project pages, you just have a `demo` possibility at best (e.g. [sandstorm](https://sandstorm.io/), [YunoHost](https://yunohost.org/)) and a `download the source code` in the worst case. Why not having a classic `sign up` button? We propose to implement this sign up button by standardizing FOSIA manifest. We will write an implementation of a FOSIA store that will allow having a simple way to provision the Internet application for the end user, from the HSP of his choice.

Today, there is no such standard, and we believe it is something missing. We can see the emergence of [Dockerfiles](http://docs.docker.com/reference/builder/) and [Vagrantfiles](http://docs.vagrantup.com/v2/vagrantfile/index.html) around FOSIA projects. But this doesn't care about application data created during runtime. And these files are aimed primarily at developers. The problem to solve is how to transfer a running FOSIA from a store to another. How to write a standard manifest file. How to write a standard store.

###  1.2. the relative advantage of the proposed innovation

We believe that thanks to the fact that it's a standard, people will be free to move their FOSIA between store. They will even be able to start their own HSP with their data. It is really important for us that people are free to change their store at any time, and also their HSP.

We are aiming at creating a FOSIA store, and the only people that are trying to solve this particular challenge right now are :
- [YunoHost](https://yunohost.org/)
- [Sandstorm](https://sandstorm.io/)
- [arkos](https://arkos.io/)

There is also [ownCloud](http://owncloud.org/) and [Cozy](http://cozy.io/), but they take the party of rewriting all FOSIA to offer an integrated user experience (à la Google Apps) (which is also a valid path in our opinion).

And finally, the admin panels (e.g. [plesk](http://sp.parallels.com/products/plesk/), [webmin](http://www.webmin.com/), [cpanel](http://cpanel.net/)) but the users aimed are system adminstrator. We target end users.

Nobody is thinking about the interoperability of such store. So we propose to solve this challenge and offer them to follow the standard. We'll work closely with these people during all the manifest standard creation process.

And if you compare a FOSIA store to google/facebook, the advantage of a FOSIA store is obviously the freedom of the end user. Freedom to change his store, freedom to change his HSP, and freedom to pay with money or personal data.

At the end of the day, after the implementation of the FOSIA store, we'll also provide hosting service for this store, but an independent HSP. We aim local, and small scale, in the same way you trust more your local bio farmer than your supermarket.

###  1.3. usability: for whom and to what purpose

The target of the standard manifest is any store that is willing to offer FOSIA, and believe that interoperability is a key element of such software. It is also targeted at FOSIA developers that want to offer their application to the end user in a more user friendly manner.

And then, when we'll host such a store, we target a geek (woman or man). She/He is probably working as software engineer and cares about free software and likes playing around/tinkering with computers. And more generally, anybody that is concerned by privacy, and ready to give up a bit of usability and money in exchange of freedom. These persons want to take back control over their data. Unfortunately, these persons don't have enough time or sufficient knowledge to administer these services by themselves.

###  1.4. perspectives for further development of this innovation and/or other technologies

When the standard is written, we'll work to promote it. We hope that many stores and many FOSIA will adopt the standard and open their implementation.

As more and more people are concerned about their privacy and data ownership, we see ever more store  projects in this area trying to solve this issue. Most of them don't have the service in mind. Even worse, there is no interoperability in mind. But we see that ever more people are interested. So in terms of development, this is a really interesting area to focus on. And so the ultimate goal is for all people have their [Freedom Box](https://freedomboxfoundation.org/) at home with the store of their choice. In the mean time, as it is still complicated for most, we offer this hosted solution.

We believe that redecentralizing the Internet is the most important mission we have today. And this standard is one more step closer.

###  1.5. relevance for NLnet's mission

We believe writing FOSIA to make the Internet a better place is nice. But it is not worth the effort if nobody is willing to offer it through a store. Indeed, if you don't think about a way to distribute innovation to the broader humanity, dissemination of technology will fail. We offer to solve this challenge. Hosting Free and Open Source Software in a user friendly manner is the way to help people (not just geeks) escape mass surveillance, and getting back data ownership.

## 2. Existing work by others

The idea of a personal/cloud store is not new. A lot of people already try to solve this challenge:
- [Freedom Box](https://freedomboxfoundation.org/)
- [YunoHost](https://yunohost.org/)
- [Sandstorm](https://sandstorm.io/)
- [arkos](https://arkos.io/)
- [Cozy](http://cozy.io/)
- [ownCloud](http://owncloud.org/)

Unfortunately, just for two of them ([ownCloud](http://owncloud.org/) and [Sandstorm](https://sandstorm.io/)) you can find an hosted version.

There is already some sort of manifest file for every applications they offer in their store. But it is not at all standard between them. And there is no easy way to migrate your data from one store to another.

More broadly every kind of system administrator web interface ( [plesk](http://sp.parallels.com/products/plesk/), [webmin](http://www.webmin.com/) or [cpanel](http://cpanel.net/)) tries to simplify service administration. But we don't consider it as relevant for our mission as we target end-user.

There is also the great work of the [IndieWeb community](http://indiewebcamp.com/store) to try to find out the actors involved in writing such a standard FOSIA manifest. It will be our base to start writing the standard specifications.

## 3. Existing work by us

We are at early stage of the project, and you can follow progress on our [GitHub account](https://github.com/indiehosters/). At the HSP level, we already have static sites working with IPv6, [SNI](https://en.wikipedia.org/wiki/Server_Name_Indication), [SPDY](https://en.wikipedia.org/wiki/SPDY), and an instance of [YunoHost](https://yunohost.org/). This allows us to provide emails and jabber for our end users.

We'll start experimenting to switch these services between our two HSP, and from this experience, start to write the standard FOSIA manifest. We'll also start communicating on this idea soon, among the community of store developers.

## 4. Project setup

### 4.1 Two sub projects

#### Standard FOSIA manifest

We firstly need to write a standard FOSIA manifest.

#### Implementation

Then we need to write FOSIA manifest for some applications. And develop a basic store to use it in production. We aim at being an HSP and run this standard. We call it the IndieHosters network.

### 4.2 Funding

The goal is to entirely fund this by donations and its goals are entirely non-profit.

### 4.3 Licences

We, through this project, aim to research, publish and educate. We publish everything under AGPL for software, and Creative Commons licenses for everything else.

### 4.4 People

The project will employ [Michiel de Jong](http://www.linkedin.com/in/michielbdejong) and [Pierre Ozoux](http://www.linkedin.com/in/pierreozoux) as full-time free-lance contractors. Once the network is running in production, each IndieHoster will bill his or her own users directly, possibly with a freemium or pay-what-you-like model.

Much of the expertise Michiel brings to the project, was built up as founder at [unhosted](https://unhosted.org/).

Pierre works since two years as DevOps and software engineer for Seedrs. During this time, he contributed to some automation tools like [Chef](http://www.getchef.com/) and [Packer](http://www.packer.io/).

## 5. Project planning

We decided to quit our current position to start this project fulltime on the first of October. We are now in alpha phase with a bit less than ten alpha testers of the IndieHosters network. We aim at reaching beta for first of February. Here is our planning, with deliverables, for the next two quarterly.

#### 1st of December 2014: draft standard
- standard FOSIA manifest
- write this manifest file for the following FOSIA:
  - emails
  - [XMPP](http://xmpp.org/)
  - static html
  - [remoteStorage](http://remotestorage.io/)
  - [sockethub](http://sockethub.org/)
  - [gitlab](https://about.gitlab.com/)
  - [YunoHost](https://yunohost.org/)
  - [ownCloud](http://owncloud.org/)
  - [Cozy](http://cozy.io/)
  - [wordpress](http://wordpress.org/)

#### 1st February 2015: store implementation - beta release
- a simple web application to provision users
- a basic configuration for service provisioning tool

At this stage users can ask us to manually perform the following actions
- start a service
- have a personal domain name
- backup personal data
- migration to another HSP that host a store based on the standard manifest

During the beta, most of the services are not yet automatic nor stables, but everything is working, even if it needs human intervention.

#### 1st April 2015: store implementation - stable release

Control panel: a web application to control the following functionalities:
- start a service
  - linked to an advanced configuration for automatic service provisioning
- configure domain name (with ssl certificate)
- backup personal data
- migration to another HSP that host a store based on the standard manifest

So the idea is to write one standard FOSIA manifest and a store implementation. The implementation will be two small pieces of software:
- a simple web application to allow users to manage their services
- a configuration to link this web application to a provisioning tool

We'll also host such store in production to prove the effectiveness of such implementation.

We aim at simplicity, and writing as little code as possible. Just the strict necessary.

These two deliverables will be shipped the first of April (hopefully without jokes inside!).

## 6. Project budgeting

There is not much expenses besides the salary of the two founders. So the budget goes as following for the first six months:
The salary budget is 6x3000 = 18000 euros. This includes:

- 2000 euros/month net 'salary' - 2 people
- 300 euros/month German/Portuguese health insurance - 2 people
- 300 euros/month desk in a flex-office - 2 people
- 200 euros/month reserved for taxes and other administrative costs like registry and bank fees - 2 people
- 200 euros/month reserved for demo hosting, conference attendance, and miscellaneous costs - 2 people

The total budget is then 18000 euros.

It means that:
- writing the standard and some FOSIA manisfest :          6000 euros
- store implementation beta release:   6000 euros
- store implementation stable release: 6000 euros

Two financing plans are thought:
- the perfect plan: NLnet finances the standard and the implementation.
- if it is not possible, we ask NLnet to kindly finance the standard, and we take care of financing the implementation through crowdfunding and freelance.

In the later case, the stable release of the implementation would be delayed by at least one month (time to prepare crowdfunding campaign) if the crowdfunding is successful. Or many months in case we have to freelance to finish the project.

## 7. Project risks

###  7.1. Existing store Adoption

If the standard is too complicated to set up, or it involves too much changes to their existing infrastructure, existing stores will not adopt the standard. So we have to aim at simplicity. We might also need to implement some sort of traduction of already existing store manifest files. This way we can have an easy implementation for the already existing stores.

To mitigate this risk, we really need to focus on involving the community as soon as possible during the project. The sooner the better. And we also need to involve as many different actors as possible, i.e. existing FOSIA store, for-profit HSP, associatives HSP, FOSIA developers.

###  7.2. End users Adoption

For the implementation phase, the first risk is that we don't manage to convince people that our solution is better than YouNameIt proprietary store. Most of people nowadays use proprietary store and get used to their simplicity and integration. We know that our solution will be a bit more complicated and less integrated. At the beginning, it will be of course impossible to reach a user experience à la Apple. Plus, for our IndieHosters network long term sustainability, we aim at a pay-what-you-like model (like wikipedia) to finance salaries of hosters. It might be difficult to convince people to give money for a store they could otherwise have in exchange of their private data (which people value less and less).

To mitigate this risk we aim firstly at people aware of privacy issues on Internet. We hope this circle of early adopters will convince their circles, and little by little reach critical mass.

For the long term sustainability, we aim our store to all kind of hosters:
- for-profit hosters (e.g. [Gandi](https://www.gandi.net/), [OVH](https://www.ovh.com/))
- hosters reselling personal data (we are fine with that as long as the end user is aware)
- non-profit hosters (e.g. [riseup](https://riseup.net/), [ecobytes](http://ecobytes.net/about), [IndieHosters](https://indiehosters.net/))

We find this way to be really healthy ecosystem. Then users will have choice among HSP. And if they want to pay with their private data, they'll also be free to do so. At least this is a closer definition of what we call an open and free (like in freedom) Internet.

## 8. Project results dissemination

We'll start from the beginning of the project to involve FOSIA community to write the standard FOSIA manifest. So from the beginning we will spread this project.

And once we release the stable version of our implementation, we have a creative way of disseminating the project. The idea is to replace the traditional `demo` button you can find on many FOSIA projects by a `sign up` button. This button will bring the user to his HSP and allow him to use directly the software (without installing nor configuring any thing). The idea will be to work closely with FOSIA developers to implement this functionality on the project page before they launch it in the media.

It will be a win/win partnership. FOSIA developers will be happy because they will have more users using their application (so more people contributing to it). And we will be happy because we will have more users using our infrastructure (and at the end, more IndieHosters).

## 9. Follow-ups on the project

This is a long term project. We ask NLnet to help to bootstrap it, but we hope to be sustainable after the stable release (thanks to donations). So the followup is as soon as it is stable, we write  more and more FOSIA manifest, to have an ever bigger software offer.

If we don't have anymore funding, that's also fine. If enough people are using our store implementation, more and more HSP will use it also. So the community will be able to maintain the implementation by itself. And us, the founders, will continue to maintain our HSP and provide FOSIA (added by the community) to our users.
