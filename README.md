# NAME

Syntax::Feature::Qs - Trim leading whitespace from all lines in a string

# VERSION

Version 0.2003, released 2015-01-17.

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

This software is copyright (c) 2015 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
