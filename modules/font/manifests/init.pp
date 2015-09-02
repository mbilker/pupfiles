# Defines the font resource type

define font (
  $source,
  $filename = $name
) {
  include font::base

  enduser_file { ".fonts/${filename}":
    ensure => file,
    source => "${source}/${filename}",
    mode   => '0644',
    notify => Exec['Update font cache (fc-cache)']
  }
}
