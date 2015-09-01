class base::mbilker {
	include base
	include console::zsh
	user {'mbilker':
		home => '/home/mbilker',
		managehome => true,
		gid => 'users',
		groups => ['users', 'wheel', 'adm', 'input', 'sys', 'kvm'],
		membership => minimum,
		comment => 'mbilker',
		system => false,
		shell => '/bin/zsh',
		require => [Class['console::zsh'], Group['adm']],
		password => template('private/base/mbilker/password')
	}
	file {'/home/mbilker':
		ensure => directory,
		mode => 0600,
		owner => 'mbilker',
		group => 'users'
	}
}
