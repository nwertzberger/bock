Bock
=========

Bash Mocking Framework - Currently completely TODO

Implementation
==============

This tool offers a way to create aliases that then call a simple mock
program that can then be used for testing shell scripts.

Usage
=====
    $ . /path/to/mockshell cp td rm other commands i want to mock
    $ rm thefile
    $ verify rm thefile
    $ echo $?
    0
    $ reset
    $ verify rm thefile
    ERROR: Wanted but not invoked: "rm thefile"
    $ echo $?
    -1
