class { 'base::mbilker': }
class { 'console': }

class { 'pacman':
  enable_aur       => true,
  yaourt_exec_user => 'mbilker',
  yaourt_exec_home => '/home/mbilker'
}

class { 'desktop':
  browser          => 'chrome_dev',
  dpi              => 96,
  games            => true,
  graphics_drivers => 'nvidia'
}
