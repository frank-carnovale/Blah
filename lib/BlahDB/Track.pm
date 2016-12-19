package BlahDB::Track;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s: %d. %s', $self->cd, $self->trackid, $self->title;
}

1;
