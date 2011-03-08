use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Datalib',
    AUTHOR              => q{Alexandria Marie Wolcott <alyx@sporksmoo.net>},
    VERSION_FROM        => 'lib/Datalib.pm',
    ABSTRACT_FROM       => 'lib/Datalib.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Datalib-*' },
);
