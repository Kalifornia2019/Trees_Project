package Trees;

=head1 NAME
  Trees SQL
=cut

use strict;
use warnings FATAL => 'all';
use parent qw( dbcore );
my ($admin, $CONF);

#**********************************************************

=head2 new($db, $admin, $CONF)
  Arguments:
    $db    - ref to DB
    $admin - current Web session admin
    $CONF  - ref to %conf
  Returns:
    object
=cut

#**********************************************************
sub new {
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = {};
  bless($self, $class);

  $self->{db}    = $db;
  $self->{admin} = $admin;
  $self->{conf}  = $CONF;

  return $self;
}

#**********************************************************

=head2 search($attr)
  Arguments:
    $attr - hash_ref
  Returns:
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

  my $we1 = $attr->{TREE_HEIGHT};
  my $we  = $attr->{TREE_AGE};

  if ($WHERE) {

    if ($we) {
      if ($we1) {
        my $WHERE1 = $WHERE . " AND tree_age>=$we AND tree_age<=$we1";
        $self->query(
          "SELECT
    $self->{SEARCH_FIELDS}
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
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
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
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
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
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
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
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
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
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
    id, date, tree_age, tree_height, tree_circle, tree_type, tree_status,comment, value_x,value_y 
    FROM trees d
    $WHERE; 
     ",
        undef,
        $attr
      );

      return $self->{list};
    }

  }

  1;
}

#**********************************************************

=head2 info($id)
  Arguments:
    $id - id of doc
  Returns:
=cut

#**********************************************************
sub info {
  my $self = shift;
  my ($id) = @_;

  $self->query(
    "SELECT id, date, tree_age, tree_height, tree_circle, tree_type, tree_status FROM trees WHERE id = ? ",
    undef,
    {
      INFO => 1,
      Bind => [$id],
    }
  );

  return $self;
}

#**********************************************************

=head2 add($attr)
  Arguments:
    $attr - hash_ref
  Returns:
=cut

#**********************************************************
sub add_trees {
  my $self = shift;
  my ($attr) = @_;

  return $self->query_add('trees', $attr);

  return $self;

}

#**********************************************************

=head2 del($id)
  Arguments:
  Returns:
=cut

#**********************************************************
sub del {
  my $self = shift;
  my ($id) = @_;

  return $self->query_del('trees', { ID => $id });
}

#**********************************************************

=head2 change($attr)
  Arguments:
  Returns:
=cut

#**********************************************************
sub change {
  my $self = shift;
  my ($attr) = @_;

  #Abills::Base::_bp('', $attr);
  $self->changes(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'trees',
      DATA         => $attr
    }
  );

  return $self;
}

#**********************************************************

=head2 search_count($attr)
  Arguments:
  Returns:
=cut

#**********************************************************
sub search_count {
  my $self = shift;
  my ($attr) = @_;

  $self->query("SELECT COUNT(*) AS number_trees, SUM(tree_age) AS sage_trees FROM trees;", undef, { COLS_NAME => 1 });

  return $self->{list};
}

1;
