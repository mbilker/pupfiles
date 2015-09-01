class desktop::environment::i3::i3status {
	enduser_file {'.i3status.conf':
		source => 'desktop/i3'
	}
}
