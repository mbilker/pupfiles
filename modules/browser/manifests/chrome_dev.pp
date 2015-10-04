# Installs the google chrome browser development version

class browser::chrome_dev {
  pacman::aur { 'google-chrome-dev': }
}
