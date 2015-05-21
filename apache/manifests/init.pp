# Class to install and run apache
class apache {
  class { '::apache::install': }
  ->
  class { '::apache::service': }
}
