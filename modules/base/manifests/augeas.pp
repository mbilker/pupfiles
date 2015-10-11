# Installs augeas dependencies

class base::augeas {
  package { 'augeas':
    ensure => present
  }

  #package { 'ruby-augeas':
  #  ensure   => present,
  #  provider => gem,
  #  require  => Package['augeas']
  #}
}
