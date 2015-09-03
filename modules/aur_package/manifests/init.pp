# Installs a Arch Linux AUR package

define aur_package(
  $ensure = 'present',
) {
  include aur_package::yaourt

  case $ensure {
    'present': {
      exec { "aur_package::install::${name}":
        require     => Class[aur_package::yaourt],
        cwd         => '/tmp',
        environment => 'HOME=/home/mbilker',
        command     => "/usr/bin/yaourt -S --noconfirm ${name}",
        unless      => "/usr/bin/yaourt -Qk ${name}",
        user        => 'mbilker',
        logoutput   => on_failure,
        timeout     => 1800,
      }
    }
    'absent': {
      exec { "aur_package::remove::${name}":
        require   => Class[aur_package::yaourt],
        command   => "/usr/bin/yaourt -Rs ${name}",
        onlyif    => "/usr/bin/yaourt -Qi ${name}",
        user      => 'mbilker',
        logoutput => on_failure,
      }
    }
    default: {
      fail("Aur_package[${name}] ensure parameter must be either 'present' or 'absent'")
    }
  }
}
