## no critic (RequireUseStrict, RequireUseWarning)
package Calendar::Timetable::Exporter::Html;
## use critic
use Moose;
use namespace::autoclean;
use Carp;

extends 'Calendar::Timetable::Exporter';

#ABSTRACT: Calendar Timetable HTML Exporter 

=head1 SYNOPSIS

  use Calendar::Timetable;

  my $time_table = Calendar::Timetable->new();

  ..

  print $time_table->html();

=head1 DESCRIPTION

Calendar::Timetable::Exporter::HTML produces Calendar::Timetable HTML output 

=cut

=head1 METHODS

=cut

sub output {
  my $self = shift;
  my $time_table = shift
    or croak "Timetable parameter is mandatory";

  my $day_header = '';
  $day_header .= "<td>$_</td>" foreach 1 .. 31;

  my $output = << "END_HTML";
<table class="ctt">
  <thead>
    <tr>
      <th>Row</th>
      $day_header
    </tr>
  </thead>

  <tbody>
    <tr>
      <th>Row</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
  </tbody>
</table>

END_HTML

  return $output;
}

__PACKAGE__->meta->make_immutable;

1;
