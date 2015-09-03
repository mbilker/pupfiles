# Adds the archlinuxfr repository to pacman

class base::packaging::archlinuxfr {
  include pacman

  pacman::repo { 'archlinuxfr':
    server    => 'http://repo.archlinux.fr/$arch',
    sig_level => 'Optional',
    order     => 50
  }
}
