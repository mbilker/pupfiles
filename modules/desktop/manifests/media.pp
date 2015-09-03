# Installs media related packages

class desktop::media {
  package { 'vlc':
    ensure => present
  }
  package { 'ffmpeg':
    ensure => present
  }
  package { 'mpd':
    ensure => present
  }

  include desktop::media::mpv
  include desktop::media::ncmpcpp
  include desktop::media::cava

  package  {'mencoder':
    ensure => present
  }
  package { 'mkvtoolnix-cli':
    ensure => present
  }
  package { 'mkvtoolnix-gtk':
    ensure => present
  }
  package { 'handbrake-cli':
    ensure => present
  }
  package { 'handbrake':
    ensure => present
  }
  package { 'pavucontrol':
    ensure => present
  }
}
