[![Build Status](https://travis-ci.org/lizmat/unprint.svg?branch=master)](https://travis-ci.org/lizmat/unprint)

NAME
====

unprint - provide fast unbuffered print / say / put

SYNOPSIS
========

    use unprint;

    print "foo";
    say "bar";
    put 42;

DESCRIPTION
===========

This module provides a fast `print`, `say` and `put` that will directly write to STDOUT of the OS without any buffering. As such, this should give you basically the same speed as Perl 5's unbuffered output, with auto-flushing enabled (typically the `$|++` idiom).

AUTHOR
======

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/unprint . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

