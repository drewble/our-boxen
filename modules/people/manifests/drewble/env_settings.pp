class people::drewble::env_settings {

  # Recovery Message on Lock Screen
  osx::recovery_message { '@drewble - If this Mac is found, please call +1 (615) 932-0192': }

  # Global Settings
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::natural_mouse_scrolling

  # Fonts
  include fonts::adobe

  # Finder Settings
  include osx::finder::show_all_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::show_all_filename_extensions

  # Dock Settings
  include osx::dock::2d
  class { 'osx::dock::position': position => 'bottom'}
  include osx::dock::autohide
  class { 'osx::dock::icon_size': size => 36,}
  include osx::dock::disable_dashboard
  include osx::dock::clear_dock
  osx::dock::hot_corner { 'Bottom Right':
    action => 'Put Display to Sleep'
  }
  class { 'osx::dock::magnification':
    magnification => true,
    magnification_size => 84
  }

  # Misc Settings
  include osx::disable_app_quarantine
  include osx::software_update
  include osx::keyboard::capslock_to_control
  include osx::global::natural_mouse_scrolling
  class { 'osx::sound::interface_sound_effects': enable => false,}

  # Safari Settings
  include include osx::safari::enable_developer_mode
}
