class people::drewble::brews {
  $_packages = [
    'curl',
    'openssl',
    'tmux',
    'brew-cask',
    'drush',
    'node',
    'php55,
    'postgresql',
    'sqlite',
  ]

  homebrew::tap {
    'nviennot/tmate':
    } -> package { 'tmate':
    ensure => present,
  }

  # Install php 5.4
  php::version { '5.5': }

  # Install a couple of specific minor versions
  php::version { '5.3': }
  php::version { '5.4': }

}

