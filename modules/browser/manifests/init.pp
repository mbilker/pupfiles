# defines the browser type

define browser(
) {
  case $name {
    'chrome': {
      include browser::chrome
    }
    'chrome_dev': {
      include browser::chrome_dev
    }
    default: {
      fail("Unknown browser '${name}' provided")
    }
  }
}
