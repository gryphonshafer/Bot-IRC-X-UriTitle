# NAME

Bot::IRC::X::UriTitle - Bot::IRC plugin to parse and print URI titles

# VERSION

version 1.03

[![build](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/workflows/build/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/actions?query=workflow%3Abuild)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['UriTitle'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC) plugin makes the bot parse and print URI titles.

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::UriTitle)
- [GitHub Actions](https://github.com/gryphonshafer/Bot-IRC-X-UriTitle/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-UriTitle)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-UriTitle)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-UriTitle.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2021 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
