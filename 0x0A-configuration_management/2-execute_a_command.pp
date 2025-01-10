# execute pkill command to kill bashscript file killmenow
exec { 'pkill -f killmenow':
  path    => '/usr/bin', '/usr/sbin', '/bin',
}

