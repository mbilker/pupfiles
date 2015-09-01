class desktop::laptop {
	package {'hdparm':}
	package {'sdparm':}
	package {'laptop-mode-tools':
		require => [Package['hdparm'], Package['sdparm']]
	}
	service {'laptop-mode':
		require => Package['laptop-mode-tools']
	}
	package {'powertop':}
	package {'xf86-input-mtrack-git':}
}
