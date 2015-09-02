# Adds the infinality-bundle repositories to pacman

class base::packaging::infinality {
  pacman_repository { 'infinality-bundle':
    server   => 'http://bohoomil.com/repo/$arch',
    siglevel => 'Optional'
  }

  pacman_repository { 'infinality-bundle-multilib':
    server   => 'http://bohoomil.com/repo/multilib/$arch',
    siglevel => 'Optional'
  }
}
