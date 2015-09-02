# Handles user git config file

class console::git {
  package { 'git': }

  enduser_file { '.gitconfig':
    ensure  => present,
    source  => 'console/git',
    require => Package['git']
  }
}
