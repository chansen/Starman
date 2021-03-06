use inc::Module::Install;
name 'Starman';
all_from 'lib/Starman.pm';
readme_from 'lib/Starman.pm';
build_requires 'Test::More';
requires 'Plack', 0.99_05;
requires 'Net::Server';
requires 'Data::Dump';
requires 'HTTP::Parser::XS';
requires 'HTTP::Status';
requires 'HTTP::Date';
requires 'parent';
install_script 'bin/starman';
recommends 'Server::Starter';
recommends 'Net::Server::SS::PreFork';
test_requires 'Test::Requires';
auto_include_deps;
auto_install;
author_tests('xt');
auto_set_repository;
WriteAll;
