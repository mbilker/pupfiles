# Blacklists pcspkr module to prevent system beeping

class base::nobeep {
	file { '/etc/modprobe.d/nobeep.conf':
		ensure  => present,
		content => 'blacklist pcspkr'
	}
}
