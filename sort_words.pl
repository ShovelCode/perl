#!/usr/bin/perl
use strict;
use warnings;

# Check arguments
if (@ARGV != 2) {
    die "Usage: perl sort_words.pl input.txt output.txt\n";
}

my ($input_file, $output_file) = @ARGV;

# Open input file
open(my $in, '<', $input_file) or die "Cannot open input file: $!";

# Read all lines
my @words = <$in>;
close($in);

# Remove newline characters
chomp @words;

# Sort alphabetically
@words = sort @words;

# Open output file
open(my $out, '>', $output_file) or die "Cannot open output file: $!";

# Write sorted words
foreach my $word (@words) {
    print $out "$word\n";
}

close($out);

print "Words sorted and written to $output_file\n";
