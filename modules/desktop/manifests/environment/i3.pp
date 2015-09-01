class desktop::environment::i3 {
	package {'i3lock':}
	package {'i3status':}
	package {'i3-wm':}

	package {'lxappearance':}

	include desktop::environment::i3::i3status
	include desktop::environment::i3::i3wm
}
