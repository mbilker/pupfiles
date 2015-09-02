# Installs the multilib repository to pacman

class base::packaging::multilib {
  pacman_repository { 'multilib':
    mirrorlist => '/etc/pacman.d/mirrorlist',
    siglevel   => 'PackageRequired'
  }
}
