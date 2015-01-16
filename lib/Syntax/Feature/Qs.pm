use strict;
use warnings;

package Syntax::Feature::Qs;

# VERSION
# ABSTRACT: Trim leading whitespace from all lines in a string

use Devel::Declare 0.006007 ();
use B::Hooks::EndOfScope 0.09;
use Sub::Install 0.925 qw/install_sub/;

use Devel::Declare::Context::Simple;

use namespace::clean;

my %quote_op = qw(qs q qqs qq);
my @new_ops = keys %quote_op;

sub install {
    my $class = shift;
    my %args = @_;
    my $target = $args{'into'};

    Devel::Declare->setup_for($target => {
        map {
            my $name = $_;
            ($name => {
                const => sub {
                    my $context = Devel::Declare::Context::Simple->new;
                    $context->init(@_);
                    return $class->_transform($name, $context);
                },
            });
        } @new_ops
    });
    foreach my $name (@new_ops) {
        install_sub {
            into => $target,
            as => $name,
            code => $class->_run_callback,
        };
    }
    on_scope_end {
        namespace::clean->clean_subroutines($target, @new_ops);
    };
    return 1;
}

sub _run_callback {
    return sub ($) {
        my $string = shift;
        $string =~ s{^\h+|\h+$}{}gms;
        return $string;
    };
}

sub _transform {
    my $class = shift;
    my $name = shift;
    my $ctx = shift;

    $ctx->skip_declarator;
    my $length = Devel::Declare::toke_scan_str($ctx->offset);
    my $string = Devel::Declare::get_lex_stuff;
    Devel::Declare::clear_lex_stuff;
    my $linestr = $ctx->get_linestr;
    my $quoted = substr $linestr, $ctx->offset, $length;
    my $spaced = '';
    $quoted =~ m{^(\s*)}sm;
    $spaced = $1;
    my $new = sprintf '(%s)', join '',
        $quote_op{$name},
        $spaced,
        substr($quoted, length($spaced), 1),
        $string,
        substr($quoted, -1, 1);
    substr($linestr, $ctx->offset, $length) = $new;
    $ctx->set_linestr($linestr);
    return 1;
}

1;

__END__

=encoding utf-8

=head1 SYNOPSIS

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

=head1 DESCRIPTION

This is a syntax extension to be used with L<syntax>.

It provides two quote-like operators, C<qs> and C<qqs>. They are drop-in replacements for C<q> and C<qq>, respectively.

Their purpose is to automatically trim leading and trailing horizontal whitespace on every line. They do not remove empty lines.


=head1 SEE ALSO

=for :list
* L<Syntax::Feature::Ql> (which served as a base for this)
* L<Syntax::Feature::Qi>
* L<String::Nudge>
* L<syntax>

=cut
