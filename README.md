Bock
=========

Bash Mocking Framework - Currently completely TODO

Implementation
==============

This tool offers a way to create aliases that then call a simple mock
program that can then be used for testing shell scripts.

Usage
=====
    $ . /path/to/bock cp td rm other commands i want to mock
    $ rm thefile
    $ bock verify rm thefile
    $ echo $?
    0
    $ reset
    $ bock verify rm thefile
    ERROR: Wanted but not invoked: "rm thefile"
    $ echo $?
    -1
    $ bock when rm thefile
    $ bock return -1
    $ bock output STDOUT <<< EOF
    This
    is
    the
    output
    EOF
    $ rm thefile
    This
    is
    the
    output
    $ echo $?
    -1
