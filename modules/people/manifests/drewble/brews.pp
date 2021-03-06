class people::drewble::brews {
  $_packages = [
    'drush',
    'node',
    'php55',
    'postgresql',
    'sqlite',
  ]

  package { $_packages:
    ensure   => present,
    provider => homebrew,
  }

  homebrew::tap {
    'nviennot/tmate':
    } -> package { 'tmate':
    ensure => present,
  }

  include brewcask
  
  # Install php 5.4
  php::version { '5.5': }

  # Install a couple of specific minor versions
  php::version { '5.3': }
  php::version { '5.4': }

}
