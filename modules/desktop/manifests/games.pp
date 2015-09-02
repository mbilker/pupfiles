# Installs game related packages

class desktop::games {
  package { 'wine':
    ensure => present
  }
  package { 'wine_gecko':
    ensure  => present,
    require => Package['wine']
  }
  package { 'winetricks':
    ensure  => present,
    require => Package['wine']
  }
  package { 'steam': }
}
