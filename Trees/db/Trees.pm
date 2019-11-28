package Trees;

=head1 NAME
  Trees SQL
=cut
use strict;
use warnings FATAL => 'all';
use parent qw( dbcore );

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
sub new{
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = { };
  bless( $self, $class );

  $self->{db} = $db;
  $self->{admin} = $admin;
  $self->{conf} = $CONF;

  return $self;
}


#**********************************************************
=head2 list($attr)
  Arguments:
    $attr - hash_ref
  Returns:
=cut
#**********************************************************
sub tree_list{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  my $PG = ($attr->{PG}) ? $attr->{PG} : 0;
  my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? $attr->{PAGE_ROWS} : 25;
  
  my @WHERE_RULES = ();
  if (defined($attr->{MIN_AGE})&& $attr->{MIN_AGE}!=0) {
    push @WHERE_RULES, "tree_age>='$attr->{MIN_AGE}'";
  }
  if (defined($attr->{MAX_AGE})&& $attr->{MAX_AGE}!=0) {
    push @WHERE_RULES, "tree_age<='$attr->{MAX_AGE}'";
  }
  if (defined($attr->{TYPE_ID})&& $attr->{TYPE_ID}!=0) {
    push @WHERE_RULES, "tree_type='$attr->{SORT}'"
  }
  if (defined($attr->{STATUS})&& $attr->{STATUS} ne "") {
    push @WHERE_RULES, "tree_status='$attr->{STATUS}'";
  }

  my $WHERE = $self->search_former($attr, [],
      { WHERE       => 1,
          WHERE_RULES => \@WHERE_RULES
      });
  $self->query(
      "SELECT tr.id,
          tr.date,
          tr.tree_age,
          tr.tree_height,
          tr.tree_circle,
          tr.tree_type,
          tr.tree_status,
          tr.value_x,
          tr.value_y,
          tr.comment
          FROM
          trees AS tr
          $WHERE
          ORDER BY $SORT $DESC",
      undef, $attr
  );

  return $self->{list};
}

1;
 #my $WHERE = $self->search_former( $attr, [
  # [ 'ID', 'INT', 'd.id', 1 ],
 # [ 'DATE', 'STR', 'd.date',  1],
 #   [ 'AGE', 'INT', 'd.tree_age', 1 ],
 #[ 'HEIGHT', 'INT', 'd.tree_height', 1 ],
# [ 'CIRCLE', 'INT', 'd.tree_circle', 1 ],
 #[ 'ADD_TREE_SORT', 'STR', 'd.tree_type', 1 ],
 #[ 'STATUS', 'STR', 'd.tree_status', 1 ],
#],
 #  {
 #    WHERE => 1
 #   }
 #);
 # $self->query(
  # "SELECT
  #  $self->{SEARCH_FIELDS}
  #  id
 #   FROM trees d 
  # ;
  #   ",
  #  undef,
  #  $attr
  #);
 # return $self->{tree_list};

#}
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

  $self->query("SELECT id, date, tree_age, tree_height, tree_circle, tree_type, tree_status FROM trees WHERE id = ? ",
    undef,
    {
      INFO => 1,
      Bind => [ $id ],
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
sub add_trees{
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
sub del{
  my $self = shift;
  my ($id) = @_;

  return $self->query_del( 'trees', { ID => $id } );
}


#**********************************************************
=head2 change($attr)
  Arguments:
  Returns:
=cut
#**********************************************************
sub change{
  my $self = shift;
  my ($attr) = @_;

  return $self->changes( {
    CHANGE_PARAM => 'ID',
    TABLE        => 'trees',
    DATA         => $attr
  });
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

  $self->query("SELECT COUNT(*) AS number_trees FROM trees;",undef,{COLS_NAME => 1});
   
# print $self;
  return $self->{list};
}

1;
