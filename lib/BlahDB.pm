package BlahDB;

use base qw[Mojolicious::Plugin::Tables::Model];

sub connect_info { [ 'dbi:SQLite:t/example.db', '', ''] }

sub glossary { +{
    cd => 'Compact Disk',
    artist => 'Musician'
} }

1;

