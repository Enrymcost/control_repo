node default { 
  file {'/root/README':
    ensure => file
    content => 'questo è un file leggimi',
  }
}
