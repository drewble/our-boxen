class people::rclements::casks {
  $_packages = [
    'gimp',
    'postgres',
    'ngrok',
    'imageoptim',
    'inkscape',
    'xquartz',
    'google-chrome',
    'amazon-music',
    'google-drive',
    'cord',
    'sublime-text',
    'totalterminal'
    'itsycal',
    'fontprep',
    'sequel-pro',
    'filezilla'
  ]
  package { $_packages:
    ensure          => present,
    install_options => ['--appdir=/Applications'],
    provider        => brewcask,
  }
}
