class teams::dev::casks {
  $_packages = [
    'alfred',
    'google-drive',
    'heroku-toolbelt',
  ]
  package { $_packages:
    ensure          => present,
    install_options => ['--appdir=/Applications'],
    provider        => brewcask,
  }
}
