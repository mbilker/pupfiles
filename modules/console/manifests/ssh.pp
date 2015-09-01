class console::ssh {
	include console::gpg
	package {'autossh':}
	package {'mosh':}
	enduser_file {'.ssh':
		ensure => directory
	}
	enduser_file {'.ssh/config':
		content => template('console/ssh/config.erb')
	}
}
