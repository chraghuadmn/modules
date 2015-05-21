# Class to install apache
class apache::install ( $package_name = hiera("apachepackage")){
  
  
  package { $package_name: ensure => installed, }


  file { '/var/www/html':
    ensure => "present",
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template ('apache/index.erb'),
  }

}
