# Install qemu package; need kvm group for base::mbilker

class base::qemu {
  include base::packaging

  package { 'qemu':
    ensure => present
  }
}
