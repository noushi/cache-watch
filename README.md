cache-watch
============

Attempt to "efficiently" watch Linux Cache.

The goal is to be able to tell which page belongs to what file.


The Efficient, The Slow and the Dumb
====================================

Since the most efficient way would be to patch the Linux kernel to have a more detailed 
cache state updated on page creation and eviction, this is a 1st attempt to get that info
in userland.

I doubt that using a kernel module will allow to hook relevant events at the cache layer.

As I haven't yet researched thoroughly, there will be many flaws to fix.

Now, the dumb/trivial method will be to use the `inotify` facility to monitor access to relevant files
and then query and update their cache state.

It seems that `fanotify` replaces `inotify`, but it doesn't seem to track file deletion and renames.


Status & Limitations
====================

Not implemented yet.
Come later.

