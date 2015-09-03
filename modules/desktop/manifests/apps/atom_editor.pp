# Installs the Atom editor package

class desktop::apps::atom_editor {
  pacman::aur { 'atom-editor':
    ensure => present
  }

  enduser_file { '.atom':
    ensure => directory
  }
  enduser_file { '.atom/config.cson':
    source => 'desktop/apps/atom_editor'
  }
}
