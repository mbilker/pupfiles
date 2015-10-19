# Sets up my user account

class base::mbilker {
  include base::qemu
  include console::zsh

  user {'mbilker':
    home       => '/home/mbilker',
    managehome => true,
    gid        => 'users',
    groups     => ['users', 'wheel', 'adm', 'input', 'sys', 'kvm'],
    comment    => 'mbilker',
    shell      => '/usr/bin/zsh',
    membership => minimum,
    system     => false,
    password   => template('private/base/mbilker/password'),
    require    => Class['console::zsh']
  }

  file { '/home/mbilker':
    ensure => directory,
    mode   => '0600',
    owner  => 'mbilker',
    group  => 'users'
  }
}
