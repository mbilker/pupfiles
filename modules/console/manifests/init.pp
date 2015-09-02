# Initializes the console class

class console {
  include console::ssh
  include console::screen
  include console::git
  include console::shutils
  include console::oh_my_zsh
}
