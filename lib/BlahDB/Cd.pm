package BlahDB::Cd;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    my $year = $self->year? sprintf(' (%s)', $self->year): '';
    sprintf '%s: %s%s', $self->artist, $self->title, $year;
}

1;
