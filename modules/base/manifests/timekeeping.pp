class base::timekeeping {
	require certs
	aur_package {'tlsdate':}
	service { 'tlsdate':
		enable => true,
		require => Aur_package['tlsdate']
	}
	service { 'ntpd':
		enable => false
	}
}
