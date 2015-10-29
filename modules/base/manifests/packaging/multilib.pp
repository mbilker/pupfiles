# Installs the multilib repository to pacman

class base::packaging::multilib {
  if $::hardwaremodel == 'x86_64' {
    pacman::repo { 'multilib':
      sig_level => 'PackageRequired',
      order     => 40
    }
  }
}
