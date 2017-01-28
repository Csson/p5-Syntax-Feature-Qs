# NAME

Syntax::Feature::Qs - Trim leading whitespace from all lines in a string

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10+-blue.svg" alt="Requires Perl 5.10+" />
    <a href="https://travis-ci.org/Csson/p5-Syntax-Feature-Qs"><img src="https://api.travis-ci.org/Csson/p5-Syntax-Feature-Qs.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/Syntax-Feature-Qs-0.2005"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/Syntax-Feature-Qs/0.2005" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=Syntax-Feature-Qs%200.2005"><img src="http://badgedepot.code301.com/badge/cpantesters/Syntax-Feature-Qs/0.2005" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-98.6%-yellow.svg" alt="coverage 98.6%" />
    </p>
</div>

# VERSION

Version 0.2005, released 2017-01-28.

# SYNOPSIS

    use syntax 'qs';

    say qs{
        Multi line
        string
    };

    # is exactly the same as

    say q{
    Multi line
    string
    };

# DESCRIPTION

This is a syntax extension to be used with [syntax](https://metacpan.org/pod/syntax).

It provides two quote-like operators, `qs` and `qqs`. They are drop-in replacements for `q` and `qq`, respectively.

Their purpose is to automatically trim leading and trailing horizontal whitespace on every line. They do not remove empty lines.

# SEE ALSO

- [Syntax::Feature::Ql](https://metacpan.org/pod/Syntax::Feature::Ql) (which served as a base for this)
- [Syntax::Feature::Qi](https://metacpan.org/pod/Syntax::Feature::Qi)
- [String::Nudge](https://metacpan.org/pod/String::Nudge)
- [syntax](https://metacpan.org/pod/syntax)

# SOURCE

[https://github.com/Csson/p5-Syntax-Feature-Qs](https://github.com/Csson/p5-Syntax-Feature-Qs)

# HOMEPAGE

[https://metacpan.org/release/Syntax-Feature-Qs](https://metacpan.org/release/Syntax-Feature-Qs)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
