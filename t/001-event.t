#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Test::Exception;

use FindBin qw($Bin);
use lib "$Bin/../lib";

my $oldDir = chdir $Bin;

require_ok('Calendar::Timetable::Event');

my $event;

ok( $event = Calendar::Timetable::Event->new(), 
    'Event correctly instancied'
);

done_testing;

chdir $oldDir;
