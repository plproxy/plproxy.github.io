---
layout: simple
title: PL/Proxy ToDo list
---

# PL/Proxy todo list

## Near future

 * Lazy value type cache, per-conn binary I/O decision.

 * Clean up the binary-or-not decision.  There should be possible
   to have partitions with different versions.  Requires lazy values.

## Good to have

 * RUN ON ALL: ignore errors?
 * RUN ON ANY: if one con failed, try another

## Just thoughts

 * Drop `plproxy.get_cluster_config()`

 * Streaming for big resultsets, to avoid loading them fully in memory.
   This needs also backend changes.

 * integrate with memcache:
   
	set_object(id, data)
	CACHE SET object(id) = data;

	get_object(id)
	CACHE GET object(id)
