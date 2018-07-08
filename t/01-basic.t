use v6.c;
use Test;

plan 4;

for (
  "print q/hello/",   "hello",
  "say q/hello/",     "hello\n",
  "say Int",          "(Int)\n",
  "put (1,2)",        "1 2\n",
) -> $string, $expected {

    my $output = shell(
      "$*EXECUTABLE -I lib -M unprint -e '$string'", :out
    ).out.slurp;
    is $output, $expected, "did '$string' give '$expected'";
}

# vim: ft=perl6 expandtab sw=4
