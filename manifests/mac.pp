class { 'pacman':
  enable_aur       => true,
  yaourt_exec_user => 'mbilker',
  yaourt_exec_home => '/home/mbilker'
}

class { 'base::mbilker': }
class { 'base': }
class { 'console': }

class { 'desktop':
  browser          => 'chrome_dev',
  dpi              => 96,
  games            => false,
  graphics_drivers => 'intel',
  laptop           => true
}
