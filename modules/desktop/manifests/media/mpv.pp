# Installs mpv media player
class desktop::media::mpv {
  pacman::aur {'mpvhq-git':}

  enduser_file { '.config/mpv':
    ensure => directory,
    source => 'desktop/media/mpv'
  }
}
