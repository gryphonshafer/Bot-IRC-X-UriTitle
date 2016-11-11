package Bot::IRC::X::UriTitle;
# ABSTRACT: Bot::IRC plugin to parse and print URI titles

use strict;
use warnings;

use Text::Unidecode 'unidecode';
use URI::Title 'title';

# VERSION

sub init {
    my ($bot) = @_;

    $bot->hook(
        {
            command => 'PRIVMSG',
            text    => qr|https?://\S+|,
        },
        sub {
            my ( $bot, $in, $m ) = @_;

            my %urls;
            $urls{$1} = 1 while ( $in->{text} =~ m|(https?://\S+)|g );
            $bot->reply( '[ ' . unidecode( title($_) ) . ' ]' ) for ( keys %urls );
            return;
        },
    );
}

1;
__END__
=pod

=begin :badges

=for markdown
[![Build Status](https://travis-ci.org/gryphonshafer/Bot-IRC-X-UriTitle.svg)](https://travis-ci.org/gryphonshafer/Bot-IRC-X-UriTitle)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Bot-IRC-X-UriTitle/badge.png)](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-UriTitle)

=end :badges

=for test_synopsis BEGIN { die "SKIP: Bot::IRC may or may not be available." }

=head1 SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['UriTitle'],
    )->run;

=head1 DESCRIPTION

This L<Bot::IRC> plugin makes the bot parse and print URI titles.

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<Bot::IRC>
* L<GitHub|https://github.com/gryphonshafer/Bot-IRC-X-UriTitle>
* L<CPAN|http://search.cpan.org/dist/Bot-IRC-X-UriTitle>
* L<MetaCPAN|https://metacpan.org/pod/Bot::IRC::X::UriTitle>
* L<AnnoCPAN|http://annocpan.org/dist/Bot-IRC-X-UriTitle>
* L<Travis CI|https://travis-ci.org/gryphonshafer/Bot-IRC-X-UriTitle>
* L<Coveralls|https://coveralls.io/r/gryphonshafer/Bot-IRC-X-UriTitle>
* L<CPANTS|http://cpants.cpanauthors.org/dist/Bot-IRC-X-UriTitle>
* L<CPAN Testers|http://www.cpantesters.org/distro/T/Bot-IRC-X-UriTitle.html>

=for Pod::Coverage init

=cut
