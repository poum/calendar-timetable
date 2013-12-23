## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable::Row;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

#ABSTRACT: Calendar Timetable row

=head1 SYNOPSIS

  use Calendar::Timetable;

  my $time_table = Calendar::Timetable->new();

  my $row = $time_table->add_row();

=head1 DESCRIPTION

Calendar::Timetable::Row stores events for a same subject (person by example) 

=cut

=head1 METHODS

=cut

has 'name' => (
  is => 'rw',
  isa => 'Str',
  default => 'Row #1',
);

has 'description' => (
  is => 'rw',
  isa => 'Str',
  default => 'Time calendar first row',
);

has 'events' => (
  is      => 'rw',
  isa     => 'ArrayRef[Calendar::Timetable::Event]',
  default => sub { [] },
);

__PACKAGE__->meta->make_immutable;

1;
