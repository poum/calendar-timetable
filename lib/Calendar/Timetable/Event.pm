## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable::Event;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

#ABSTRACT: Calendar Timetable event 

=head1 SYNOPSIS

  use Calendar::Timetable;

  my $time_table = Calendar::Timetable->new();

  my $row = $time_table->add_row();

  my $event = $row->add_event(date => '01/01/2014', name => 'Happy new year !');

=head1 DESCRIPTION

Calendar::Timetable::Event stores event data

=cut

=head1 METHODS

=cut

has 'date' => (
  is  => 'rw',
  isa => 'DateTime',
);

has 'name' => (
  is      => 'rw',
  isa     => 'Str',
  default => 'Row #1',
);

has 'description' => (
  is      => 'rw',
  isa     => 'Str',
  default => 'Time calendar first row',
);

__PACKAGE__->meta->make_immutable;

1;
