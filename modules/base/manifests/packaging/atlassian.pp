# Adds Atlassian Arch Linux repo to access HipChat

class base::packaging::atlassian {
  pacman_repository { 'atlassian':
    server   => 'http://downloads.hipchat.com/linux/arch/$arch',
    siglevel => 'PackageOptional DatabaseRequired TrustAll'
  }
}
