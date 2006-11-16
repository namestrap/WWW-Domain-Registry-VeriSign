package WWW::Domain::Registry::VeriSign;

use strict;
use base qw/Class::Accessor/;
use warnings;
use Carp;
use WWW::Mechanize;

__PACKAGE__->mk_accessors(qw(mech));

our $VERSION = '0.01';

sub new {
    my ($class, $id, $password) = @_;
    my $self = bless {}, $class;
    $self->{reg} = {
                    base => 'https://www.verisign-grs.com',
                    id => $id,
                    password => $password,
                };
    $self->mech(WWW::Mechanize->new);
    $self;
}

sub login {
    my $self = shift;
    $self->mech->get($self->{reg}->{base} .'/registrartool/logon.jsp');
    $self->mech->submit_form(
                               form_number => 1,
                               fields => {
                                          logonName   => $self->{reg}->{id},
                                          password    => $self->{reg}->{password},
                                      }
                           );
    $self->parse_login($self->mech->content);
}

sub parse_login {
    my ($self, $content) = @_;
    $content =~ m/New User welcome center/;
}

sub query_regr {
    my $self = shift;
    $self->mech->get($self->{reg}->{base} .'/registrartool/query_regr.do');
    $self->parse_query_regr($self->mech->content);
}

sub parse_query_regr {
    my ($self, $content) = @_;
    my $content_from = qq(<font face=arial,helvetica size=2>);
    my $content_till = qq(</font>);
    return unless $content =~ /$content_from(.*?)$content_till/s;;
    $content = $1;
    $content =~ s,\t, ,g;
    $content =~ s, +, ,g;
    $content =~ s,(\n )+,\n,g;
    $content =~ s,\n+,\n,g;
    $content =~ s,<dd>,,g;

    my $data;
    while ($content =~ m{<li><b>([^:]+):</b>\n([^<]+)<}ig) {
        my($key, $val) = ($1, $2);
        $val =~ s/^\s+//;
        $val =~ s/\s+$//;
        $val =~ s/\n+/\n/g;
        $data->{lc($key)} = $val =~ m/\n/ ? [ split m/\n/ , $val ] : $val;
    }

    $content =~ s,<a[^>]+>,,g;
    $content =~ s,</a></li>,,g;
    $content .= "<li>\n"; # adjustment
    while ($content =~ m{<li><b>([^<]+)</b></li><br>\n([^<]+)<li>}ig) {
        my($key, $val) = ($1, $2);
        $val =~ s,\s+$,,;
        $data->{lc($key)} = [ split m/\n/, $val ];
    }

    return $data;
}

# Preloaded methods go here.

1;
__END__

=head1 NAME

WWW::Domain::Registry::VeriSign - VeriSign NDS (https://www.verisign-grs.com/) Registrar Tool

=head1 SYNOPSIS

  use WWW::Domain::Registry::VeriSign;
  use Data::Dumper;

  my $reg = WWW::Domain::Registry::VeriSign->new('id', 'password');
  $reg->login;
  my $res = $reg->query_regr;
  print Dumper $res;

=head1 DESCRIPTION

WWW::Domain::Registry::VeriSign uses WWW::Mechanize to scrape VeriSign NDS (https://www.verisign-grs.com/).

=head1 SEE ALSO

L<WWW::Mechanize>

=head1 AUTHOR

Masahito Yoshida E<lt>masahito@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Masahito Yoshida

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
