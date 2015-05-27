class people::drewble {
  # teams
  include ::teams::dev

  # personal
  include ::people::drewble::brews
  include ::people::drewble::casks
  include ::people::drewble::env_settings
  include autoconf
}
