# We need nqp ops everywhere here, so make it global
use nqp;

proto sub print(|) is export {*}
multi sub print(str $s)   { nqp::print($s)      }
multi sub print(Str:D $s) { nqp::print($s)      }
multi sub print($s)       { nqp::print($s.Str)  }
multi sub print(*@s)      { nqp::print(@s.join) }

proto sub say(|) is export {*}
multi sub say(str $s)   { nqp::say($s)             }
multi sub say(Str:D $s) { nqp::say($s)             }
multi sub say($s)       { nqp::say($s.gist)        }
multi sub say(*@s)      { nqp::say(@s>>.gist.join) }

proto sub put(|) is export {*}
multi sub put(str $s)   { nqp::say($s)     }
multi sub put(Str:D $s) { nqp::say($s)     }
multi sub put($s)       { nqp::say($s.Str) }
multi sub put(*@s)      { nqp::say(@s.join) }

=begin pod

=head1 NAME

unprint - provide fast print / say / put

=head1 SYNOPSIS

=begin code :lang<raku>

use unprint;

print "foo";
say "bar";
put 42;

=end code

=head1 DESCRIPTION

This module provides fast C<print>, C<say> and C<put> subroutines that will
directly write to STDOUT of the OS without any overhead caused by determining
which C<$*OUT> to actually use.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/unprint . Comments and
Pull Requests are welcome.

If you like this module, or what I'm doing more generally, committing to a
L<small sponsorship|https://github.com/sponsors/lizmat/>  would mean a great
deal to me!

=head1 COPYRIGHT AND LICENSE

Copyright 2018, 2020, 2021, 2024 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under
the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
