# Adds the infinality-bundle repositories to pacman

class base::packaging::infinality {
  pacman::repo { 'infinality-bundle':
    server    => 'http://bohoomil.com/repo/$arch',
    sig_level => 'Optional',
    order     => 52
  }

  pacman::repo { 'infinality-bundle-multilib':
    server    => 'http://bohoomil.com/repo/multilib/$arch',
    sig_level => 'Optional',
    order     => 53
  }
}
