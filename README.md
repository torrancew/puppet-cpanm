# CPANMinus Package Provider for Puppet

This module provides a basic package provider for CPAN through the `cpanminus` binary.
It assumes `cpanminus` can be found at /usr/bin, currently, and provides a puppet class,
`cpanm`, which will install the `cpanminus` package, if needed/desired/available.

## Usage

    package { 'Moose': ensure => present, provider => cpanm }

    package { 'MooseX::App::Cmd': ensure => latest, provider => 'cpanm' }

## License

Apache License, version 2.0

