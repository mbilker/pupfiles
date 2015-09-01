class desktop::media {
	package {'vlc':}
	package {'ffmpeg':}
	include desktop::media::mpv
	include desktop::media::ncmpcpp
	include desktop::media::cava
	package {'mencoder':}
	package {'mkvtoolnix-cli':}
	package {'mkvtoolnix-gtk':}
	package {'handbrake-cli':}
	package {'handbrake':}
	package {'pavucontrol':}
	aur_package {'paman':}
	aur_package {'freetuxtv':}
}
