# Installs development files for building AUR packages

class aur_package::base_devel {
  package { 'base-devel':
    ensure => present
  }
}
