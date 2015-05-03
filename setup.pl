#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use Cwd;
#use File::Copy;
#use File::Copy::Recursive qw(rcopy);
use POSIX 'strftime';

package App::EnvironmentSetup;
our $VERSION = "0.0.1";

package main;

# 各種設定値
my %init = (
   catalog    => 'setupfiles',
   homedir    => $ENV{"HOME"}.'/' ,
   currentdir => Cwd::getcwd().'/', 
   timestamp  => strftime "%Y-%m-%d_%H-%M.%S", localtime,
);my $init = \%init;

&main::config_copy($init);

sub config_copy {

  my $init = shift;

  open (my $fh, "<", $init->{catalog}) or die "Cannot open $init->{catalog}: $!";
  while (my $line = readline $fh) {
    chomp $line;

    if (-d "$init->{currentdir}$line" ) {
      `cp -r $init->{currentdir}$line $init->{homedir}`;
      print "$init->{currentdir}$line $init->{homedir}\n";
    }
    if (-f "$init->{currentdir}$line" ) { 
      `cp $init->{currentdir}$line $init->{homedir}`;
      print "$init->{currentdir}$line $init->{homedir}\n";
    }

  }
  close $fh;
}

1;
