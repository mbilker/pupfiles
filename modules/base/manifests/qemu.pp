# Install qemu package; need kvm group for base::mbilker

class base::qemu {
  package { 'qemu':
    ensure => present
  }
}
