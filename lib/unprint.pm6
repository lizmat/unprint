use v6.c;

unit module unprint:ver<0.0.1>:auth<cpan:ELIZABETH>;

# We need nqp ops everywhere here, so make it global
use nqp;

proto sub print(|) is export {*}
multi sub print(str $s)   { nqp::print($s)     }
multi sub print(Str:D $s) { nqp::print($s)     }
multi sub print($s)       { nqp::print($s.Str) }

proto sub say(|) is export {*}
multi sub say(str $s)   { nqp::say($s)      }
multi sub say(Str:D $s) { nqp::say($s)      }
multi sub say($s)       { nqp::say($s.gist) }

proto sub put(|) is export {*}
multi sub put(str $s)   { nqp::say($s)     }
multi sub put(Str:D $s) { nqp::say($s)     }
multi sub put($s)       { nqp::say($s.Str) }

=begin pod

=head1 NAME

unprint - provide fast unbuffered print / say / put

=head1 SYNOPSIS

  use unprint;

  print "foo";
  say "bar";
  put 42;

=head1 DESCRIPTION

This module provides a fast C<print>, C<say> and C<put> that will directly
write to STDOUT of the OS without any buffering.  As such, this should give
you basically the same speed as Perl 5's unbuffered output, with auto-flushing
enabled (typically the C<$|++> idiom).

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/unprint . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under
the Artistic License 2.0.

=end pod

# vim: ft=perl6 expandtab sw=4
