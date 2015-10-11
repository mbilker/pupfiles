class { 'base::mbilker': }
class { 'console': }

class { 'pacman':
  enable_aur       => true,
  yaourt_exec_user => 'mbilker',
  yaourt_exec_home => '/home/mbilker'
}

class { 'desktop':
  browser          => 'chrome_dev',
  dpi              => 100,
  games            => false,
  graphics_drivers => 'intel',
  laptop           => true
}
