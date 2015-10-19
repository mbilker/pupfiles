# Sets up the Arch Linux packaging system to my settings

class base::packaging {
  package { 'pacman': }
  package { 'abs': }
  package { 'namcap': }

  include base::packaging::archlinuxfr
  include base::packaging::atlassian
  include base::packaging::multilib
  include base::packaging::infinality
  include base::packaging::pkgfile

  #file { '/etc/pacman.d/pupfiles-options.conf':
  #  source  => 'puppet:///modules/base/packaging/pacman.d/pupfiles-options.conf',
  #  require => Package['pacman']
  #}
  #ini_setting { '/etc/pacman.conf/options/include/pupfiles-options':
  #  path    => '/etc/pacman.conf',
  #  section => 'options',
  #  setting => 'Include',
  #  value   => '/etc/pacman.d/pupfiles-options.conf',
  #  require => File['/etc/pacman.d/pupfiles-options.conf']
  #}
}
