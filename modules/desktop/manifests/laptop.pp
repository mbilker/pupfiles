# Installs laptop related packages

class desktop::laptop {
  package {'hdparm':
    ensure => present
  }
  package {'sdparm':
    ensure => present
  }
  package { 'laptop-mode-tools':
    require => [
      Package['hdparm'],
      Package['sdparm']
    ]
  }
  package { 'powertop':
    ensure => present
  }
  package { 'xf86-input-mtrack-git':
    ensure => present
  }

  service { 'laptop-mode':
    require => Package['laptop-mode-tools']
  }
}
