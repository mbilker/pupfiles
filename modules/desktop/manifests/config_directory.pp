class desktop::config_directory {
	enduser_file { '.config':
		ensure => directory
	}
}
