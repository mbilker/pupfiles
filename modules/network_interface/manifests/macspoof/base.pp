class network_interface::macspoof::base {
	aur_package {'macchiato-git':}
	service {'macchiato':
		require => Aur_package['macchiato-git']
	}
}
