# Installs font related packages

class desktop::fonts {
  package { 'ttf-dejavu': }
  package { 'ttf-liberation': }
  package { 'ttf-droid': }

  # ASAP
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

  # Comic Neue
  font { 'ComicNeue-Angular-Bold-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Angular-Bold.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Angular-Light-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Angular-Light.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Angular-Regular-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Angular-Regular.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Bold-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Bold.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Light-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Light.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Regular-Oblique.ttf':
    source => 'desktop/fonts/comic_neue'
  }
  font { 'ComicNeue-Regular.ttf':
    source => 'desktop/fonts/comic_neue'
  }


  # Lato
  font { 'Lato-Black.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-BlackItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Bold.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-BoldItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Hairline.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-HairlineItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Heavy.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-HeavyItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Italic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Light.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-LightItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Medium.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-MediumItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Regular.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Semibold.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-SemiboldItalic.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-Thin.ttf':
    source => 'desktop/fonts/lato'
  }
  font { 'Lato-ThinItalic.ttf':
    source => 'desktop/fonts/lato'
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
