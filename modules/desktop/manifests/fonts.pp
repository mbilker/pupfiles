# Installs font related packages

class desktop::fonts {
  include font::base

  package { ['ttf-dejavu', 'ttf-droid', 'ttf-liberation']:
    ensure => present,
    notify => Exec['Update font cache (fc-cache)']
  }
  pacman::aur { ['ttf-comic-neue', 'ttf-lato', 'ttf-opensans']:
    ensure => present,
    notify => Exec['Update font cache (fc-cache)']
  }

  # Asap
  font { 'Asap-Bold.ttf':
    source => 'desktop/fonts/asap'
  }
  font { 'Asap-BoldItalic.ttf':
    source => 'desktop/fonts/asap'
  }
  font { 'Asap-Italic.ttf':
    source => 'desktop/fonts/asap'
  }
  font { 'Asap-Regular.ttf':
    source => 'desktop/fonts/asap'
  }

  # Hack
  font { 'Hack-Bold.ttf':
    source => 'desktop/fonts/hack'
  }
  font { 'Hack-BoldOblique.ttf':
    source => 'desktop/fonts/hack'
  }
  font { 'Hack-Regular.ttf':
    source => 'desktop/fonts/hack'
  }
  font { 'Hack-RegularOblique.ttf':
    source => 'desktop/fonts/hack'
  }

  # Offensive
  font { 'Offensive-Bold.ttf':
    source => 'desktop/fonts/offensive'
  }
}
