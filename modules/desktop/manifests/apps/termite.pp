# Installs the termite terminal emulator

class desktop::apps::termite {
  package { 'termite':
    ensure => present
  }

  enduser_file { '.config/termite':
    ensure => directory,
    source => 'desktop/apps/termite'
  }
}
