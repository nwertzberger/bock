Bock
=========

Bash Mocking Framework - Currently completely TODO

Implementation
==============

This tool offers a way to create aliases that then call a simple mock
program that can then be used for testing shell scripts.

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
