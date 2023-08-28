#!/usr/bin/perl
$string  = "aaabc";

print "\$string = $string\n\n";

print "pattern = /abc/, It matches $string\n" if $string =~ /abc/;
print "pattern = /abc/, It doesn't matches $string\n" if $string !~ /abc/;
print "pattern = /(?>a*)abc/, It matches $string\n" if $string =~ /(?>a*)abc/;
print "pattern = /(?>a*)abc/, It doesn't matches $string\n" if $string !~ /(?>a*)abc/;

# check /(?:a*)/
print "pattern = /(?:a*)abc/, It matches $string\n" if $string =~ /(?:a*)abc/;
print "pattern = /(?:a*)abc/, It doesn't matches $string\n" if $string !~ /(?:a*)abc/;

print "pattern = /(?:a*)*abc/, It matches $string\n" if $string =~ /(?:a*)*abc/;
print "pattern = /(?:a*)*abc/, It doesn't matches $string\n" if $string !~ /(?:a*)*abc/;

print "pattern = /(?:a*)+abc/, It matches $string\n" if $string =~ /(?:a*)+abc/;
print "pattern = /(?:a*)+abc/, It doesn't matches $string\n" if $string !~ /(?:a*)+abc/;

# check /(?:a+)/
print "pattern = /(?:a+)abc/, It matches $string\n" if $string =~ /(?:a+)abc/;
print "pattern = /(?:a+)abc/, It doesn't matches $string\n" if $string !~ /(?:a+)abc/;

print "pattern = /(?:a+)*abc/, It matches $string\n" if $string =~ /(?:a+)*abc/;
print "pattern = /(?:a+)*abc/, It doesn't matches $string\n" if $string !~ /(?:a+)*abc/;

print "pattern = /(?:a+)+abc/, It matches $string\n" if $string =~ /(?:a+)+abc/;
print "pattern = /(?:a+)+abc/, It doesn't matches $string\n" if $string !~ /(?:a+)+abc/;

# check /(?:a*)xx/
print "pattern = /(?:a*)*+abc/, It matches $string\n" if $string =~ /(?:a*)*+abc/;
print "pattern = /(?:a*)*+abc/, It doesn't matches $string\n" if $string !~ /(?:a*)*+abc/;

print "pattern = /(?:a*)++abc/, It matches $string\n" if $string =~ /(?:a*)++abc/;
print "pattern = /(?:a*)++abc/, It doesn't matches $string\n" if $string !~ /(?:a*)++abc/;

# check /(?:a+)xx/
print "pattern = /(?:a+)*+abc/, It matches $string\n" if $string =~ /(?:a+)*+abc/;
print "pattern = /(?:a+)*+abc/, It doesn't matches $string\n" if $string !~ /(?:a+)*+abc/;

print "pattern = /(?:a+)++abc/, It matches $string\n" if $string =~ /(?:a+)++abc/;
print "pattern = /(?:a+)++abc/, It doesn't matches $string\n" if $string !~ /(?:a+)++abc/;


# check /(?:a)/
print "pattern = /(?:a)abc/, It matches $string\n" if $string =~ /(?:a)abc/;
print "pattern = /(?:a)abc/, It doesn't matches $string\n" if $string !~ /(?:a)abc/;

print "pattern = /(?:a)+abc/, It matches $string\n" if $string =~ /(?:a)+abc/;
print "pattern = /(?:a)+abc/, It doesn't matches $string\n" if $string !~ /(?:a)+abc/;

print "pattern = /(?:a)*abc/, It matches $string\n" if $string =~ /(?:a)*abc/;
print "pattern = /(?:a)*abc/, It doesn't matches $string\n" if $string !~ /(?:a)*abc/;

print "pattern = /(?:a)*+abc/, It matches $string\n" if $string =~ /(?:a)*+abc/;
print "pattern = /(?:a)*+abc/, It doesn't matches $string\n" if $string !~ /(?:a)*+abc/;

print "pattern = /(?:a)++abc/, It matches $string\n" if $string =~ /(?:a)++abc/;
print "pattern = /(?:a)++abc/, It doesn't matches $string\n" if $string !~ /(?:a)++abc/;

