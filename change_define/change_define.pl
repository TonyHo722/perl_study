#!/usr/bin/perl

# --------------------------------------------------------
# Change Verilog 1995 to System Verilog friendly Simulator
# add wire to input/output port


use strict;
use warnings;

my $file = $ARGV[0];
my $define = $ARGV[1];
my $line;
open (FH, '<', $file) or die $!;

print "auto-gen file\n";

while (<FH>) {
 $line = $_;

 if( $define =~ /SYSTEM_test111/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test111[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }

 if( $define =~ /SYSTEM_test112/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test112[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }

 if( $define =~ /SYSTEM_test103/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test103[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }

 if( $define =~ /SYSTEM_test104/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test104[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }

 if( $define =~ /SYSTEM_test113/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test113[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }

 if( $define =~ /SYSTEM_test114/ ) {    
     if( $line =~ /^\/\/(`define[\s|\t]SYSTEM_test114[\s|\t]1)/) {
       print "$1\n";
       next;
     } 
 }


}

close(FH);
