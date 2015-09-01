class desktop::networkmanager {
	package {'networkmanager':}
	package {'networkmanager-openvpn':}
	service {'NetworkManager':
		ensure => enabled,
		require => Package ['networkmanager']
	}
}
