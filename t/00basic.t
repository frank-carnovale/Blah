use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $testdir;
BEGIN {
    use File::Basename 'dirname';
    $testdir = dirname(__FILE__);
    $ENV{EXAMPLEDB} = "$testdir/example.db";
}
use lib "$testdir/blah/lib";

my $t = Test::Mojo->new('Blah');

$t->get_ok('/'                      => 'App starts');
$t->status_is(302                   => 'Home page redirects');

$t->get_ok('/tables'                => 'tables page exists');

$t->text_is('button[table=artist]', 'Musician'
                                    => 'list of tables includes button for Musician');

$t->get_ok('/tables/artist/1/view'  => 'Row view page appears');
$t->text_is('a[href=/tables/cd/2/view]', 'Michael Jackson: Bad (1987)',
                                    => 'Linkable Child row appears');

done_testing();
