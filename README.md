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

Implementation
==============
This uses export -f to override any non-pathed function call. Its spies store
function calls in a simple text file to track what calls have been made.
A call to "resetMocks" will delete the files, but this test framework currently
leaves a ".bock" dropping in any folder it is run inside.

TODO
====

Right now this library only spies. It needs to start mocking.

