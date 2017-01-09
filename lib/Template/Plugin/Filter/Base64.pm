package Template::Plugin::Filter::Base64;
use 5.008001;
use strict;
use warnings;

use Template::Plugin::Filter;
use base qw( Template::Plugin::Filter );

use MIME::Base64 qw(encode_base64);

our $VERSION = "0.01";

sub init {
    my ($self) = @_;
    $self->install_filter('b64');
    return $self;
}

sub filter {
    my ($self, $text) = @_;

    my %options = ();
    if ($self->{ _CONFIG } && (ref($self->{ _CONFIG }) eq 'HASH')) {
        if ($self->{ _CONFIG }->{trim}) {
            $text =~ s/^\s+//ms;
            $text =~ s/\s+$//ms;
        }
    }

    my $encoded = encode_base64($text);
    return $encoded
}


1;
__END__

=encoding utf-8

=head1 NAME

Template::Plugin::Filter::Base64 - encoding b64 filter for Template Toolkit

=head1 SYNOPSIS

    [% USE Filter.Base64 trim => 1 %]
    [% FILTER b64 %]
        Hello, world!
    [% END %]

=head1 OPTIONS

=over

=item trim

Optional. If true, removes trailing blank characters (and lf, cr) of an input string

=back

=head1 SEE ALSO

MIME::Base64 - Encoding and decoding of base64 strings L<http://search.cpan.org/~gaas/MIME-Base64/Base64.pm>

=head1 LICENSE

Copyright (C) bbon.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

bbon <bbon@mail.ru>

=cut
