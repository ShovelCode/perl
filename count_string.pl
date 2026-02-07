#!/usr/bin/env perl
use strict;
use warnings;

my ($needle, $file) = @ARGV;

die "Usage: count_string.pl <string> <file>\n"
  unless defined $needle && defined $file;

open my $fh, "<", $file or die "Can't open $file: $!";

my $count = 0;

while (my $line = <$fh>) {
    chomp $line;

    # Split on ANY whitespace: spaces, tabs, newlines
    my @tokens = split /\s+/, $line;

    for my $token (@tokens) {
        $count++ if $token eq $needle;
    }
}

close $fh;

print "$count\n";

