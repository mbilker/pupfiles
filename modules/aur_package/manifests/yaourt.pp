# Installs the yaourt package manager

class aur_package::yaourt {
  require base::packaging::archlinuxfr

  package { 'customizepkg':
    ensure => present
  }
  package { 'yaourt':
    ensure => present
  }
}
