#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Datalib' ) || print "Bail out!
";
}

diag( "Testing Datalib $Datalib::VERSION, Perl $], $^X" );
