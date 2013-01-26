Bock
=========

Bash Mocking Framework

Introduction
==============

Bock is intended to be a mocking and spy framework for bash scripts. This offers a
way to test code that may be complex enough to warrant mocking away system calls.
E.g. rm, cp, mv, etc.

Usage
=====
    $ source /path/to/bock thisCall
    $ thisCall
    $ verify thisCall
    $ echo $?
    0
    $ resetMocks thisCall
    $ verify thisCall
    ERROR: Wanted but not invoked. 'thisCall'
    $ echo $?
    1

TODO
====

Add mocking calls.

Known Issues
============
The aliases don't actually work. These calls need to use the "export -f" style to override.
