## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable::Exporter;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

#ABSTRACT: Calendar Timetable abstract Exporter 

=head1 DESCRIPTION

Calendar::Timetable::Exporter is abstract class for producing Calendar::Timetable export

=cut

=head1 METHODS

=cut

sub output {
  croak __PACKAGE__ . ' is abstract';
}

__PACKAGE__->meta->make_immutable;

1;
