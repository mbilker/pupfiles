# Installs the termite terminal emulator

class desktop::apps::termite {
  package { 'termite':
    ensure => present
  }

  enduser_file { '.config/termite':
    ensure => directory,
  }

  enduser_file { '.config/termite/config':
    ensure => file,
    source => 'desktop/apps/termite'
  }
}
