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
sub list{
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';
  my $PG = ($attr->{PG}) ? $attr->{PG} : 0;
  my $PAGE_ROWS = ($attr->{PAGE_ROWS}) ? $attr->{PAGE_ROWS} : 25;

 my $WHERE = $self->search_former( $attr, [
   [ 'ID', 'INT', 'd.id', 1 ],
  [ 'DATE', 'STR', 'd.date',  1],
    [ 'AGE', 'INT', 'd.tree_age', 1 ],
 [ 'HEIGHT', 'INT', 'd.tree_height', 1 ],
 [ 'CIRCLE', 'INT', 'd.tree_circle', 1 ],
 [ 'SORT', 'STR', 'd.tree_type', 1 ],
 [ 'STATUS', 'STR', 'd.tree_status', 1 ],
],
   {
     WHERE => 1
    }
 );
  $self->query(
    "SELECT
    $self->{SEARCH_FIELDS}
    id
    FROM trees d 
    $WHERE ORDER BY $SORT $DESC LIMIT $PG, $PAGE_ROWS;
     ",
    undef,
    $attr
  );
  return $self->{list};
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
sub add{
  my $self = shift;
  my ($attr) = @_;

  return $self->query_add( 'trees', $attr);
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


1;
