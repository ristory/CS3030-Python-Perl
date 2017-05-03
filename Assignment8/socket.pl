#!/usr/bin/perl -w
#Hoang cao

use strict;
use warnings;
use IO::Socket;

if(@ARGV != 2)
{
  print STDERR "Usage: ";
  exit(1);
}



my $remote = IO::Socket::INET->new( Proto => "tcp",
 PeerAddr  => $ARGV[0],   
 PeerPort  => "socket($ARGV[1])", )  or die "Error: cannot connect to ssh port at  
 localhost";

my $result = <$remote>;

print $result;



