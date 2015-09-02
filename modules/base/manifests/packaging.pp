# Sets up the Arch Linux packaging system to my settings

class base::packaging {
  package { 'pacman': }
  package { 'abs': }
  package { 'namcap': }

  include base::packaging::pkgfile
  include base::packaging::multilib

  file { '/etc/pacman.d/pupfiles-options.conf':
    source  => 'puppet:///modules/base/packaging/pacman.d/pupfiles-options.conf',
    require => Package['pacman']
  }
  ini_setting { '/etc/pacman.conf/options/include/pupfiles-options':
    path    => '/etc/pacman.conf',
    section => 'options',
    setting => 'Include',
    value   => '/etc/pacman.d/pupfiles-options.conf',
    require => File['/etc/pacman.d/pupfiles-options.conf']
  }
}
