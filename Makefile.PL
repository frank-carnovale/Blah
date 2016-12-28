use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Blah',
  VERSION_FROM => 'lib/Blah.pm',
  ABSTRACT     => 'A minimal Mojolicious::Plugin::Tables application',
  AUTHOR       => 'Frank Carnovale <frankc@cpan.org>',
  LICENSE      => 'artistic_2',
  PREREQ_PM    => {'Mojolicious::Plugin::Tables' => '0.05',
                   'DateTime::Format::SQLite'    => '0.11',
                  },
  test         => {TESTS => 't/*.t'},
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    no_index       => {directory => ['t']},
    prereqs        => {runtime => {requires => {perl => '5.010001'}}},
    resources    => {
        bugtracker => {web => 'https://github.com/frank-carnovale/Blah/issues'},
        license    => ['http://www.opensource.org/licenses/artistic-license-2.0'],
        repository => {
            type => 'git',
            url  => 'https://github.com/frank-carnovale/Blah.git',
            web  => 'https://github.com/frank-carnovale/Blah',
        },
    },
  },
);
