class desktop::media::mpv {
	aur_package {'mpvhq-git':}

	enduser_file { '.config/mpv':
		ensure => directory,
		source => 'desktop/media/mpv'
	}
}
