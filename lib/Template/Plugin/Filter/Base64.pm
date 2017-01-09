package Template::Plugin::Filter::Base64;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

sub init {
    my ($self) = @_;
    $self->install_filter('b64');
    return $self;
}

sub filter {
    my ($self, $text) = @_;

}


1;
__END__

=encoding utf-8

=head1 NAME

Template::Plugin::Filter::Base64 - encoding b64 filter for Template Toolkit

=head1 SYNOPSIS

    use Template::Plugin::Filter::Base64;

=head1 DESCRIPTION

Template::Plugin::Filter::Base64 is ...

=head1 SEE ALSO

MIME::Base64 - Encoding and decoding of base64 strings L<http://search.cpan.org/~gaas/MIME-Base64/Base64.pm>

=head1 LICENSE

Copyright (C) bbon.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

bbon <bbon@mail.ru>

=cut
