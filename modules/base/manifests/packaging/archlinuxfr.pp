# Adds the archlinuxfr repository to pacman

class base::packaging::archlinuxfr {
  pacman_repository { 'archlinuxfr':
    server   => 'http://repo.archlinux.fr/$arch',
    siglevel => 'Optional'
  }
}
