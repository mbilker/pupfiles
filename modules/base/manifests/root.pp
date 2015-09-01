class base::root {
	include console::zsh
	user { 'root':
		home => '/root',
		managehome => true,
		gid => 'root',
		groups => ['root', 'wheel', 'sys', 'adm'],
		membership => minimum,
		comment => 'root',
		system => false,
		shell => '/usr/bin/zsh',
		require => Class['console::zsh'],
		password => template('private/base/root/password')
	}
	file { '/root':
		ensure => directory,
		mode => '0600',
		owner => 'root',
		group => 'root'
	}
}
