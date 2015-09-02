# Installs the HipChat client

class desktop::apps::hipchat {
  include base::packaging::atlassian

  package { 'hipchat':
    ensure => present
  }
}
