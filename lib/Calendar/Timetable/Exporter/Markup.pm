## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable::Exporter::Markup;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

extends 'Calendar::Timetable::Exporter';

#ABSTRACT: Calendar Timetable markup Exporter 

=head1 DESCRIPTION

Calendar::Timetable::Exporter::Markup is abstract Calendar::Timetable exporter in markup language 

=cut

=head1 METHODS

=cut

sub output {
  my $self = shift;

  croak __PACKAGE__ . ' is abstract';

  return;
}

__PACKAGE__->meta->make_immutable;

1;
