class desktop::networkmanager {
	package {'networkmanager':}
	package {'networkmanager-openvpn':}
	service { 'NetworkManager':
		enable => true,
		require => Package['networkmanager']
	}
}
