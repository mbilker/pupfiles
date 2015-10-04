# Installs font related packages

class desktop::fonts {
  include font::base

  package { ['ttf-dejavu', 'ttf-droid', 'ttf-liberation']:
    ensure => present,
    notify => Exec['Update font cache (fc-cache)']
  }
  pacman::aur { ['ttf-lato', 'ttf-opensans']:
    ensure => present,
    notify => Exec['Update font cache (fc-cache)']
  }

  # Comic Neue
  font { ['ComicNeue-Angular-Bold-Oblique.ttf', 'ComicNeue-Angular-Bold.ttf',
          'ComicNeue-Angular-Light-Oblique.ttf', 'ComicNeue-Angular-Light.ttf',
          'ComicNeue-Angular-Regular-Oblique.ttf',
          'ComicNeue-Angular-Regular.ttf',
          'ComicNeue-Bold-Oblique.ttf', 'ComicNeue-Bold.ttf',
          'ComicNeue-Light-Oblique.ttf', 'ComicNeue-Light.ttf',
          'ComicNeue-Regular-Oblique.ttf', 'ComicNeue-Regular.ttf'
          ]:
    source => 'desktop/fonts/comic_neue'
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
