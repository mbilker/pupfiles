# Installs laptop related packages

class desktop::laptop {
  package { ['hdparm', 'sdparm', 'powertop']:
    ensure => present
  }
  pacman::aur { 'laptop-mode-tools':
    ensure  => present,
    require => [
      Package['hdparm'],
      Package['sdparm']
    ]
  }
  pacman::aur { 'xf86-input-mtrack-git':
    ensure => present
  }

  service { 'laptop-mode':
    enable  => true,
    require => Pacman::Aur['laptop-mode-tools']
  }
}
