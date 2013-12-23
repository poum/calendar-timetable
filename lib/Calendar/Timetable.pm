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

Calendar::Timetable stores multirow events and outputs this events in multiple formats

=cut

=head1 METHODS

=cut

has 'rows' => (
  is      => 'rw',
  isa     => 'ArrayRef[Calendar::Timetable::Row]',
  default => sub { [] },
);

__PACKAGE__->meta->make_immutable;

1;
