define network_interface (
	$macaddress = $name,
	$interface = false,
	$macspoof = false,
	$ipv6_privacy = false
) {
	if $name == 'all' or $name == 'default' {
		if $ipv6_privacy {
			network_interface::ipv6privacy {'all':}
			network_interface::ipv6privacy {'default':}
		}
	} else {
		if $macspoof {
			network_interface::macspoof { $interface:
				classes => $macspoof
			}
		}
		if $ipv6_privacy {
			network_interface::ipv6privacy {$interface:}
		}
	}
}
