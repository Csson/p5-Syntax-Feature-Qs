# NAME

Syntax::Feature::Qs - Trim whitespace from all lines

<div>
    <p><a style="float: left;" href="https://travis-ci.org/Csson/p5-Syntax-Feature-Qs"><img src="https://travis-ci.org/Csson/p5-Syntax-Feature-Qs.svg?branch=master">&nbsp;</a>
</div>

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
- [syntax](https://metacpan.org/pod/syntax)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT

Copyright 2014 - Erik Carlsson

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
