# Installs xorg related packages

class desktop::xorg {
  package { 'xorg-server':
    ensure => present
  }
  package { 'xorg-xrandr':
    ensure => present
  }
  package { 'xorg-xkill':
    ensure => present
  }
  package { 'xorg-mkfontdir':
    ensure => present
  }
  package { 'xorg-mkfontscale':
    ensure => present
  }
}
