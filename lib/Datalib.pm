package Datalib;

use warnings;
use strict;
use Module::Load;
=head1 NAME

Datalib - The great new Datalib!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Datalib;

    my $foo = Datalib->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head2 new

Creates a new Datalib object. Requires additional parameters depending
on the database used. SQLite requires a filename.

=cut

sub new {
    my ($module, @parv) = @_;
    given (lc($module)) {
        when ('sqlite') {
            load DBI;
            if (!$parv[0]) { die('Datalib + SQLite requires a filename!'); }
            our $dbh = DBI->connect("dbi:SQLite:dbname=$parv[0]","","");
        }
    }
}


=head1 AUTHOR

Alexandria Marie Wolcott, C<< <alyx at sporksmoo.net> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-datalib at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Datalib>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Datalib


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Datalib>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Datalib>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Datalib>

=item * Search CPAN

L<http://search.cpan.org/dist/Datalib/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2011 Alexandria Marie Wolcott.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Datalib
