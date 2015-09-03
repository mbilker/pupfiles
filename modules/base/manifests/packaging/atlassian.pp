# Adds Atlassian Arch Linux repo to access HipChat

class base::packaging::atlassian {
  pacman::repo { 'atlassian':
    server    => 'http://downloads.hipchat.com/linux/arch/$arch',
    sig_level => 'PackageOptional DatabaseRequired TrustAll',
    order     => 51
  }
}
