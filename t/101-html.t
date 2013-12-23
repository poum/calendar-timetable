#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Test::Exception;

use FindBin qw($Bin);
use lib "$Bin/../lib";

my $oldDir = chdir $Bin;

require_ok('Calendar::Timetable');

my $time_table;
ok( $time_table = Calendar::Timetable->new(), 
    'Time table correctly instancied'
);

can_ok($time_table, 'html');

ok($time_table->html());

diag($time_table->html());

done_testing;

chdir $oldDir;
