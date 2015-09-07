# defines the browser type

define browser (
  $browser = 'chrome'
) {
  case $browser {
    'chrome': {
      include browser::chrome
    }
    default: {
      fail("Unknown browser '${browser}' provided")
    }
  }
}
