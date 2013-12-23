#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Test::Exception;

use FindBin qw($Bin);
use lib "$Bin/../lib";

my $oldDir = chdir $Bin;

require_ok('Calendar::Timetable::Row');

my $event;

ok( $event = Calendar::Timetable::Row->new(), 
    'Row correctly instancied'
);

done_testing;

chdir $oldDir;
