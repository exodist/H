package HA;
use strict;
use warnings;

our $VERSION = '0.002';

our $AUTOLOAD;

sub AUTOLOAD {
    my ($in, @args) = @_;
    my $meth = $AUTOLOAD;
    $meth =~ s/^.*:://g;

    my @got = $in->$meth(@args ? @args : ());
    return ($meth => \@got);
}

1;
