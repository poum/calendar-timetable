## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

#ABSTRACT: Multi row, multi format time table generator

=head1 SYNOPSIS

  use Calendar::Timetable;

  my $time_table = Calendar::Timetable();

  print $time_table->html();

=head1 DESCRIPTION

Calendar::Timetable store multirow events and output this events in multiple formats

=cut

__PACKAGE__->meta->make_immutable;

1;
