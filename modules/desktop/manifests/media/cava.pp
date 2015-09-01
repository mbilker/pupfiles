class desktop::media::cava {
	aur_package {'cava-git':}

	enduser_file {'.config/cava':
		ensure => directory
	}
	enduser_file {'.config/cava/config':
		source => 'desktop/media/cava/.config/cava/config'
	}
}
