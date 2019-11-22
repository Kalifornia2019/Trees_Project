package Trees;

use strict;
use warnings FATAL => 'all';
use parent qw( dbcore );

#**********************************************************

=head2 new - db connection

  Arguments:
    $attr   - Extra attributes
    $db
    $admin
    $CONF

  
=cut

#**********************************************************
sub new {
  my $class = shift;
  my ($db, $admin, $CONF) = @_;
  my $self = {};
  $self->{admin} = $admin;
  $self->{conf}  = $CONF;
  bless($self, $class);
  $self->{db} = $db;
  return $self;
}

#**********************************************************

=head2 add($attr)
 
=cut

#**********************************************************
sub add {
  my $self = shift;
  my ($attr) = @_;
  return $self->query_add('trees', $attr);

}

1;


