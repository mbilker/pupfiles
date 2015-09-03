# Manages the cava terminal audio visualizer

class desktop::media::cava {
  pacman::aur { 'cava-git':
    ensure => present
  }

  enduser_file { '.config/cava':
    ensure => directory
  }

  enduser_file { '.config/cava/config':
    source => 'desktop/media/cava/.config/cava/config'
  }
}
