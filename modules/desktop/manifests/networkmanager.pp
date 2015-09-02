# Installs and enables NetworkManager

class desktop::networkmanager {
  package { 'networkmanager':
    ensure => present
  }
  package { 'networkmanager-openvpn':
    ensure => present
  }

  service { 'NetworkManager':
    ensure  => running,
    enable  => true,
    require => Package['networkmanager']
  }
}
