exec { 'kill_process_killmenow':
  command => 'pkill killmenow',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  onlyif  => 'pgrep killmenow',
}

