class desktop::environment::i3::i3wm {
  enduser_file { '.i3':
    ensure => directory
  }

  enduser_file { '.i3/config':
    source => 'desktop/i3'
  }
}
