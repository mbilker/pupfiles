# Manages font related files

class font::base {
  include base::packaging::infinality
  include desktop::xorg

  #exec { 'Forcefully install infinality':
  #  command => shellquote('/usr/bin/yes', '|', '/usr/bin/pacman', '--confirm', '--needed', '--noprogressbar', '-Sy', 'fontconfig-infinality-ultimate'),
  #  unless  => "/usr/bin/pacman -Qk fontconfig-infinality-ultimate"
  #}

  package { 'fontconfig':
    ensure  => present,
  #  name    => 'fontconfig-infinality-ultimate',
    require => [
      Package['xorg-server'],
  #    Exec['Forcefully install infinality']
    ]
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
