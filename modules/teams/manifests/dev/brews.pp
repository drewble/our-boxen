class teams::dev::brews {
  $_packages = [
    'curl',
    'openssl',
    'tmux',
  ]
  package { $_packages:
    ensure   => present,
    provider => homebrew,
  }
}
