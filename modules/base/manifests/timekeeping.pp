# Manages system time packages

class base::timekeeping {
  include base::augeas
  require certs

  package { 'chrony':
    ensure => present
  }

  service { 'chrony':
    enable  => true,
    require => Package['chrony']
  }
  service { 'ntpd':
    enable => false
  }

  augeas { 'chrony_servers':
    context => '/files/etc/chrony.conf/',
    changes => [
      "set server[. = '0.pool.ntp.org'] 0.pool.ntp.org",
      "set server[. = '0.pool.ntp.org']/iburst ''",
      "set server[. = '1.pool.ntp.org'] 1.pool.ntp.org",
      "set server[. = '1.pool.ntp.org']/iburst ''",
      "set server[. = '2.pool.ntp.org'] 2.pool.ntp.org",
      "set server[. = '2.pool.ntp.org']/iburst ''",
      "set server[. = '3.pool.ntp.org'] 3.pool.ntp.org",
      "set server[. = '3.pool.ntp.org']/iburst ''",
    ],
    require => [
      Package['augeas'],
      Package['chrony'],
    ],
    notify  => Service['chrony']
  }
}
