---
title: PL/Proxy
layout: simple
---

# Introduction

PL/Proxy is a PostgreSQL procedural language (PL) handler
that allows to create functions that do remote function calls
to another possibly sharded PostgreSQL database.

## History

PL/Proxy was developed in [Skype](https://www.skype.com/) as a
[scalability](http://highscalability.com/blog/2008/4/5/skype-plans-for-postgresql-to-scale-to-1-billion-users.html)
solution for PostgreSQL database.  At first it was very thin PL component that
connected to C++ server that handled all sharding decisions.  This proved to be
too complex setup and in version 2 it was re-written to current archtecture of
PL that handles sharding and generic pooler process
([PgBouncer](https://pgbouncer.github.io)) that is able to handle large amount
of standard PostgreSQL connections that the PL makes.

## Download

Current release:

* [plproxy-2.6.tar.gz](/downloads/files/2.6/plproxy-2.6.tar.gz) (78743 bytes,
  [sha256](/downloads/files/2.6/plproxy-2.6.tar.gz.sha256))

Old releases can be downloaded from pgfoundry [archive](https://ftp.postgresql.org/pub/projects/pgFoundry/plproxy/plproxy/).

## Community

* [Project page](https://github.com/plproxy/plproxy) at Github.
* [Issue tracker](https://github.com/plproxy/plproxy/issues) at Github.
* [Downloads](https://github.com/plproxy/plproxy/releases) at Github.

