# Manages font related files

class font::base {
  include base::packaging::infinality
  include desktop::xorg

  package { 'fontconfig':
    ensure  => present,
    name    => 'fontconfig-infinality-ultimate',
    require => Package['xorg-server']
  }

  enduser_file { '.fonts':
    ensure  => directory,
    mode    => '0644',
    require => Package['fontconfig']
  }

  exec { 'Update font cache (fc-cache)':
    command     => shellquote('/usr/bin/sudo', '-u', 'mbilker', '/usr/bin/fc-cache', '-f'),
    refreshonly => true
  }
}
