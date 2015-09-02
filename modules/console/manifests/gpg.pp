# Manages the gpg settings

class console::gpg {
  file { '/etc/ssl/certs/mayfirst-peoplelink.crt':
    mode   => '0444',
    source => 'puppet:///modules/console/gpg/mayfirst-peoplelink.crt'
  }
  enduser_file { '.gnupg/gpg.conf':
    source  => 'console/gpg',
    require => File['/etc/ssl/certs/mayfirst-peoplelink.crt']
  }
  #include console::gpg::parcimonie

  #include private::console::gpg
  # I do not want to reveal my list of GPG keys.
  # For reference though, it's basically a list of blocks that look like the
  # following:
  #gpg_key {'mbilker/user@hostname':
  #	source => 'console/gpg/user.asc',
  #	user => 'mbilker'
  #}
}
