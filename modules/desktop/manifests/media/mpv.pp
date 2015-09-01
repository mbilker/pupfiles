class desktop::media::mpv {
	aur_pacakage {'mpvhq-git':}

	enduser_file {'.config':
		ensure => directory
	}
	enduser_file {'.config/mpv':
		ensure => directory,
		source => 'desktop/media/mpv'
	}
}
