# Installs oh-my-zsh under my user account

class console::oh_my_zsh {
  require console::zsh

  package { ['zsh-completions', 'zsh-syntax-highlighting']:
    ensure => present
  }

  include base::mbilker
  include base::packaging::pkgfile

  enduser_file { '.zshrc':
    source  => 'console/zsh',
    require => [
      Package['zsh'],                         # Actual shell
      Class['base::packaging::pkgfile'],      # Required for not-found hook
      Package['zsh-syntax-highlighting'],     # Required for syntax highlighting
      Enduser_file['.zsh']                    # Parent directory
    ]
  }
  enduser_file { '.zsh':
    ensure  => directory,
    source  => 'console/zsh',
    recurse => true
  }

  vcsrepo { '/home/mbilker/.zsh/oh-my-zsh':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/robbyrussell/oh-my-zsh.git',
  }

  file { '/etc/zsh/zprofile':
    mode    => '0755',
    content => "emulate sh -c 'source /etc/profile'\n"
  }
  file { '/etc/skel/.zshrc':
    mode    => '0755',
    content => "source /etc/zsh/zprofile\n"
  }
}
