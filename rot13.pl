#!/usr/bin/perl
use strict;
use warnings;

print "Enter text to encode/decode with ROT13: ";
chomp(my $text = <STDIN>);

# ROT13 transformation
$text =~ tr/A-Za-z/N-ZA-Mn-za-m/;

print "Result: $text\n";
