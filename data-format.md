# IndieHosters Data Format Version 1.0.0

This format describes what an IndieHoster should host, based on the contents of a data archive the user has exported from another IndieHoster.

## The Data Archive

The data archive should be either a gzipped tar file or a zip file, containing a directory tree. If the directory tree has been compressed into a data archive by some other technique, then it is up to the best effort of the receiving IndieHoster to extract it.

## Base Folder Structure

There should be at least one directory in the directory tree root, named as the domain name to be hosted. In each such directory, there should then be two subdirectories: 'yunohost' and 'bouncer'. These store date for the `server-wide/yunohost` and `server-wide/bouncer` docker images from https://github.com/indiehosters/dockerfiles.git. Additional folders should match a subdirectory of the `per-user` directory in the same git repository, and store data as defined by those Docker containers.

## Semantics

To turn such a data archive into a running server:

* take a server with Docker on it
* save the directories from it under /data/per-user,
* clone the https://github.com/indiehosters/dockerfiles.git repository onto the server
* in there, run `build.sh` and `run.sh`.
* this will automatically detect the domain in `/data/per-user/`, and start a number of Docker containers.
* confirm that all is well, and switch over the authoritative DNS.
