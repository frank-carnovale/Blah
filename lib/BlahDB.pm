package BlahDB;

use base qw[Mojolicious::Plugin::Tables::Model];

sub connect_info { [ 'dbi:SQLite:t/example.db', '', ''] }

sub glossary { +{
    cd => 'Compact Disk',
    cdid => 'Compact Disk ID',
    artistid => 'Musician ID',
    artist => 'Musician',
    year => 'Year Released'
} }

1;

