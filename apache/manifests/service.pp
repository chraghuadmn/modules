# Class to ensure apache service is running
class apache::service ($service_name = hiera("apacheservice")){
  service { $service_name:
    ensure => running,
    enable => true,
  }
}
