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

 #if( $line =~ /^[\s|\t]*reg\s*([\d|\w]+)\s*=/) {
 #  print "1st found: $line";
 #}
 if( $line =~ /^[\s|\t]*reg\s*([\d|\w]+)\s*=\s*([\d]+)'([\d|\w]+)([;])/) {
   print "Org: $line";	
   #print "Target: reg $1"."$4\n";
   print "\$1: $1\n";
   print "\$2: $2\n";
   print "\$3: $3\n";
   print "\$4: $4\n";
   next;
 }
 if( $line =~ /^[\s|\t]*reg\s*(\[.*\])\s*([\d|\w]+)\s*=\s*([\d]+)'([\d|\w]+)([;])/) {
   print "Org2: $line";	
   #print "Target: reg $1"."$4\n";
   print "\$1: $1\n";
   print "\$2: $2\n";
   print "\$3: $3\n";
   print "\$4: $4\n";
   print "\$5: $5\n";
   next;
 }



 # print $line;

}

close(FH);
