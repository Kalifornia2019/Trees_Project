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
=head2 search_count($attr)
  Arguments:
  Returns:
=cut
#**********************************************************
sub search_count{
  my $self = shift;
  my ($attr) = @_;

  $self->query("SELECT COUNT(*) AS number_trees, SUM(tree_age) AS sage_trees FROM trees;",undef,{COLS_NAME => 1});
   
  return $self->{list};
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
    [ [ 'TREE_TYPE', 'INT', 'd.TREE_TYPE', 1 ], [ 'TREE_STATUS', 'INT', 'd.TREE_STATUS', 1 ], ],
    {
      WHERE => 1
    }
  );

  my $we  = $attr->{TREE_AGE};
  my $we1 = $attr->{TREE_AGE2};

  if ($WHERE) {

    if ($we) {
      if ($we1) {
        my $WHERE1 = $WHERE . " AND tree_age>=$we AND tree_age<=$we1";
        $self->query(
          "SELECT
    $self->{SEARCH_FIELDS}
    id, tree_age, tree_height, tree_circle, tree_type, tree_status,x,y
    FROM trees d
    $WHERE1 ; 
     ",
          undef,
          $attr
        );

        return $self->{list};
      }

      else {
        my $WHERE1 = $WHERE . " AND tree_age>=$we";
        $self->query(
          "SELECT
    $self->{SEARCH_FIELDS}
    id, tree_age, tree_height, tree_circle, tree_type, tree_status,x,y
    FROM trees d
    $WHERE1; 
     ",
          undef,
          $attr
        );

        return $self->{list};

      }

    }
    else {
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

  }

  if (!$WHERE) {

    if ($we) {
      if ($we1) {
        my $WHERE1 = "WHERE tree_age>=$we AND tree_age<=$we1";
        $self->query(
          "SELECT
    $self->{SEARCH_FIELDS}
    id, tree_age, tree_height, tree_circle, tree_type, tree_status,x,y
    FROM trees d
    $WHERE1 ; 
     ",
          undef,
          $attr
        );

        return $self->{list};
      }

      else {
        my $WHERE1 = "WHERE tree_age>=$we";
        $self->query(
          "SELECT
    $self->{SEARCH_FIELDS}
    id, tree_age, tree_height, tree_circle, tree_type, tree_status,x,y
    FROM trees d
    $WHERE1; 
     ",
          undef,
          $attr
        );

        return $self->{list};

      }

    }

    else {
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

  }
}

#**********************************************************

1;

