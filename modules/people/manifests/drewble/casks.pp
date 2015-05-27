class people::drewble::casks {
  $_packages = [
    'gimp',
    'postgres',
    'ngrok',
    'imageoptim',
    'xquartz',
    'inkscape',
    'google-chrome',
    'amazon-music',
    'cord',
    'sublime-text',
    'totalterminal',
    'itsycal',
    'fontprep',
    'sequel-pro',
    'filezilla',
  ]
  package { $_packages:
    ensure          => present,
    install_options => ['--appdir=/Applications'],
    provider        => brewcask,
  }
}
