requires 'perl', '5.010001';

requires 'MooseX::Role::Parameterized', '1.00';
requires 'Devel::Declare', '0.006007';
requires 'B::Hooks::EndOfScope', '0.09';
requires 'Sub::Install', '0.925';
requires 'Devel::Declare::Context::Simple';
requires 'namespace::clean';

on 'test' => sub {
    requires 'Test::More', '0.96';
    requires 'syntax';
};
