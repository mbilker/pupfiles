# Installs the multilib repository to pacman

class base::packaging::multilib {
  pacman::repo { 'multilib':
    sig_level => 'PackageRequired',
    order     => 40
  }
}
