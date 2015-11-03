# Set up Intel drivers for graphical environment

class desktop::graphics::intel {
  include base::mkinitcpio
  include base::packaging::multilib
  include desktop::xorg

  package { ['xf86-video-intel', 'libva-intel-driver', 'driconf']:
    ensure => present
  }
  package { ['mesa', 'mesa-libgl']:
    ensure => present
  }

  if $::hardwaremodel == 'x86_64' {
    package { ['lib32-mesa', 'lib32-mesa-libgl']:
      ensure => present
    }
  }

  file { '/etc/X11/xorg.conf.d/20-intel.conf':
    source  => 'puppet:///modules/desktop/graphics/intel/20-intel.conf',
    require => Class['desktop::xorg']
  }
}
