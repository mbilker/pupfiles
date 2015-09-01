define browser (
	$browser = 'chrome'
) {
	case $browser {
		'chrome': {
			include browser::chrome
		}
		'tor-browser': {
			include browser::torbrowser
		}
	}
}
