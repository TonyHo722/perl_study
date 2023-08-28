#!/usr/bin/perl

# --------------------------------------------------------
# Change Verilog 1995 to System Verilog friendly Simulator
# add wire to input/output port


use strict;
use warnings;

my $file = $ARGV[0];
my $line;
open (FH, '<', $file) or die $!;

while (<FH>) {
 $line = $_;


 if( $line =~ /^\s*input\s*([\d|\w]+)$/) {
   print "input wire $1\n";
   next;
 } 


}

close(FH);
