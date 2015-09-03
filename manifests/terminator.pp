class { 'base::mbilker': }
class { 'console': }

class { 'pacman':
  enable_aur       => true,
  yaourt_exec_user => 'mbilker',
  yaourt_exec_home => '/home/mbilker'
}

class { 'desktop':
  graphics_drivers => 'nvidia',
  games            => true,
  dpi              => 100
}
