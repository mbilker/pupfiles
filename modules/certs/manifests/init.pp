# Install packaged certificate authorities

class certs {
  package { 'ca-certificates':
    ensure => present
  }
}
