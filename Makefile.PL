use inc::Module::Install;
include 'Module::AutoInstall';

name 'PerlIO-via-ToFirePHP';
all_from 'lib/PerlIO/via/ToFirePHP.pm';
perl_version '5.006';

homepage 'http://search.cpan.org/dist/PerlIO-via-ToFirePHP/';
bugtracker 'http://rt.cpan.org/Public/Dist/Display.html?Name=PerlIO-via-ToFirePHP';
repository 'http://github.com/hanekomu/perlio-via-tofirephp/tree/master';

requires 'FirePHP::Dispatcher';
requires 'PerlIO::via';

# only needed for tests, but FirePHP::Dispatcher needs this anyway, so I don't
# feel bad about requiring it here:

requires 'HTTP::Headers';

test_requires 'Test::More' => '0.70';
extra_tests;

auto_install;
auto_include;
WriteAll;
