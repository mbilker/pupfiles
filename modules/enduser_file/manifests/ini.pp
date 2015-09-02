# Defines user ini file setting

define enduser_file::ini (
  $filename,
  $setting,
  $value,
  $section = '',
  $key_val_separator = '=',
  $mode = '0600'
) {
  if ! defined(Enduser_file[$filename]) {
    enduser_file {$filename:
      mode => $mode
    }
  }

  ini_setting { "/home/mbilker/${filename}/${section}/${setting}":
    path              => "/home/mbilker/${filename}",
    section           => $section,
    setting           => $setting,
    value             => $value,
    key_val_separator => $key_val_separator,
    require           => Enduser_file[$filename]
  }
}
