class desktop::apps::atom_editor {
	aur_package {'atom-editor':}

	enduser_file {'.atom':
		ensure => directory
	}
	enduser_file {'.atom/config.cson':
		source => 'desktop/apps/atom_editor'
	}
}
