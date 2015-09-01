define enduser_file (
	$filename = $name,
	$ensure = present,
	$mode = '0600',
	$source = false,
	$recurse = false,
	$content = false,
	$replace = true,
	$noroot = false,
	$target = false,
	$absolutetarget = true
) {
	enduser_file::single {"/home/mbilker/$name":
		filename => $filename,
		owner => 'mbilker',
		group => 'users',
		ensure => $ensure,
		mode => $mode,
		source => $source,
		recurse => $recurse,
		content => $content,
		replace => $replace,
		target => $target,
		absolutetarget => $absolutetarget,
		targetprefix => '/home/mbilker'
	}
	if ! $noroot {
		enduser_file::single {"/root/$name":
			filename => $filename,
			owner => 'root',
			group => 'root',
			ensure => $ensure,
			mode => $mode,
			source => $source,
			recurse => $recurse,
			content => $content,
			replace => $replace,
			target => $target,
			absolutetarget => $absolutetarget,
			targetprefix => '/root'
		}
	}
}
