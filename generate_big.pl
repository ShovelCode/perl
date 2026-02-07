#!/usr/bin/env perl
use strict;
use warnings;

my $outfile = "big.txt";

# About ~100MB total (adjust if you like)
my $lines = 1_000;

open my $fh, ">", $outfile or die "Can't open $outfile: $!";

my @words = qw(
    apple banana carrot delta epsilon forest river mountain cloud
    tractor warehouse logistics pipeline server switch packet memory
);

for (1 .. $lines) {
    my @line;
    for (1 .. 10) {
        push @line, $words[ rand @words ];
    }
    print $fh join(" ", @line), "\n";
}

close $fh;

print "Generated $outfile\n";

