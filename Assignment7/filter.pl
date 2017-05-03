#!/usr/bin/perl
#Hoang Cao

use strict;
use warnings;

if(@ARGV != 2)
{
  print STDERR "Usage: Error";
  exit(1);
}

open(STDIN, "<",$ARGV[0]);


while(<STDIN>)
{
 s/$ARGV[0]/eval qq("$ARGV[1]")/ge;

  print "$_";  
}




