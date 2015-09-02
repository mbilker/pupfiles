# Installs networking related packages

class base::networking {
  #include base::networking::tor
  package { 'bind-tools': } # dig
  package { 'net-tools': } # netstat
  package { 'openbsd-netcat': } # netcat
  package { 'iputils': } # ping
  package { 'traceroute': }
  package { 'openssh': }
  package { 'rsync': }
  package { 'nmap': }
  package { 'tcpdump': }
  #include private::base::networking::hosts
  #include private::base::networking::udevrenamedevices
  #include private::base::networking::tunnels
}
