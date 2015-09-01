# Installs a Arch Linux AUR package

define aur_package (
  $ensure = installed
) {
  require aur_package::yaourt

  package { $title:
    ensure => $ensure,
    name   => $name
  }
}
