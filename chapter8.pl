#!/usr/bin/perl

$string  = "a";

print "\$string = $string\n\n";

$pattern = "/[\w]/";
print "pattern = $pattern , It matches $string\n" if $string =~ /[\w]/ ;
print "pattern = $pattern , It doesn't matches $string\n" if $string !~ /[\w]/ ;


$pattern = "/[^\w]/";
print "pattern = $pattern , It matches $string\n" if $string =~ /[^\w]/ ;
print "pattern = $pattern , It doesn't matches $string\n" if $string !~ /[^\w]/ ;

$pattern = "/[\W]/";
print "pattern = $pattern , It matches $string\n" if $string =~ /[\W]/ ;
print "pattern = $pattern , It doesn't matches $string\n" if $string !~ /[\W]/ ;

$pattern = "/^\w/";
print "pattern = $pattern , It matches $string\n" if $string =~ /^\w/ ;
print "pattern = $pattern , It doesn't matches $string\n" if $string !~ /^\w/ ;

