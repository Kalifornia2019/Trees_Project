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

#**********************************************************

=head2 search($attr)

=cut

#**********************************************************
sub search {

  my $self = shift;
  my ($attr) = @_;

  my $WHERE = $self->search_former(
    $attr,
    [ [ 'TREE_AGE', 'INT', 'd.TREE_AGE', 1 ], [ 'TREE_HEIGHT', 'INT', 'd.TREE_HEIGHT', 1 ], [ 'TREE_CIRCLE', 'INT', 'd.TREE_CIRCLE', 1 ], [ 'TREE_TYPE', 'INT', 'd.TREE_TYPE', 1 ], [ 'TREE_STATUS', 'INT', 'd.TREE_STATUS', 1 ], [ 'X', 'FLOAT', 'd.X', 1 ], [ 'Y', 'FLOAT', 'd.Y', 1 ], ],
    {
      WHERE => 1
    }
  );

  $self->query(
    "SELECT
    $self->{SEARCH_FIELDS}
    id, tree_age, tree_height, tree_circle, tree_type, tree_status,x,y
    FROM trees d
    $WHERE;
     ",
    undef,
    $attr
  );

  return $self->{list};

}

#**********************************************************

1;
