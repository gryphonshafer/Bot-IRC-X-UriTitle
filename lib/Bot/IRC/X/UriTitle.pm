package Bot::IRC::X::UriTitle;
# ABSTRACT: Bot::IRC plugin to parse and print URI titles

use 5.014;
use strict;
use warnings;

use LWP::UserAgent;
use LWP::Protocol::https;
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
            $bot->reply("[ $_ ]") for ( grep { defined } map { unidecode( title($_) ) } keys %urls );
            return;
        },
    );
}

1;
__END__
=pod

=begin :badges

=for markdown
[![test](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle)

=end :badges

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
* L<MetaCPAN|https://metacpan.org/pod/Bot::IRC::X::UriTitle>
* L<GitHub Actions|https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/actions>
* L<Codecov|https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle>
* L<CPANTS|http://cpants.cpanauthors.org/dist/Bot-IRC-X-UriTitle>
* L<CPAN Testers|http://www.cpantesters.org/distro/T/Bot-IRC-X-UriTitle.html>

=for Pod::Coverage init

=cut
