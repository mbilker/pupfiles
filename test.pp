notify { 'test':
  message => "HardwareModel = ${::hardwaremodel}"
}

class { 'base': }
