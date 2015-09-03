# Installs the google chrome browser

class browser::chrome {
  pacman::aur { 'google-chrome': }
}
