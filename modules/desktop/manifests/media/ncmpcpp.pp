class desktop::media::ncmpcpp {
	package {'ncmpcpp':}

	enduser_file {'.ncmpcpp':
		ensure => directory
	}
	enduser_file {'.ncmpcpp/config':
		source => 'desktop/media/ncmpcpp'
	}
}
