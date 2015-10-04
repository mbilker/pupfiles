# Main desktop class

class desktop (
  $browser = 'chrome',
  $desktop_environment = 'i3',
  $dpi = 100,
  $games = false,
  $graphics_drivers = 'intel',
  $laptop = false,
  $apps = true,
  $fonts = true,
  $media = true
) {
  include desktop::xorg
  include desktop::config_directory

  if $laptop {
    class {'desktop::laptop':
      desktop_environment => $desktop_environment
    }
  }

  case $graphics_drivers {
    'nvidia': {
      include desktop::graphics::nvidia
    }
    'ati', 'amd', 'catalyst': {
      include desktop::graphics::catalyst
    }
    'intel': {
      include desktop::graphics::intel
    }
    default: {}
  }

  case $desktop_environment {
    'i3': {
      include desktop::environment::i3
    }
    default: {}
  }

  if $browser {
    browser { $browser: }
  }

  include desktop::networkmanager

  if $apps {
    include desktop::apps
  }
  if $fonts {
    include desktop::fonts
  }
  if $media {
    include desktop::media
  }
  if $games {
    include desktop::games
  }
}
