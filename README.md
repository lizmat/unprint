[![Actions Status](https://github.com/lizmat/unprint/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/unprint/actions) [![Actions Status](https://github.com/lizmat/unprint/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/unprint/actions) [![Actions Status](https://github.com/lizmat/unprint/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/unprint/actions)

NAME
====

unprint - provide fast print / say / put

SYNOPSIS
========

```raku
use unprint;

print "foo";
say "bar";
put 42;
```

DESCRIPTION
===========

This module provides fast `print`, `say` and `put` subroutines that will directly write to STDOUT of the OS without any overhead caused by determining which `$*OUT` to actually use.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/unprint . Comments and Pull Requests are welcome.

If you like this module, or what I'm doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2020, 2021, 2024, 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

