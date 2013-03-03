class cpanm::install {
  $cpanm_pkg = $operatingsystem ? {
    default => 'cpanminus',
  }

  $perldoc_pkg = $operatingsystem ? {
    'Archlinux' => 'perl',
    default     => 'perl-doc',
  }

  package {
    'perldoc':
      ensure => installed,
      name   => $perldoc_pkg;

    'cpanminus':
      ensure  => installed,
      name    => $cpanm_pkg,
      require => Package['perldoc'];
  }
}

