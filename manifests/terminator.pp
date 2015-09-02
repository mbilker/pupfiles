class { 'base::mbilker': }

class { 'console': }

class { 'desktop':
  graphics_drivers => 'nvidia',
  games            => true,
  dpi              => 100
}
