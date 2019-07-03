class tomcat(
  $group = $tomcat::params::group, 
  $config_path = $tomcat::params::config_path,
  $packages = $tomcat::params::packages,
  $service_name = $tomcat::params::service_name,
  $service_state = $tomcat::params::service_state, 

  $user_name = $tomcat::params::user_name,
  $user_password = $tomcat::params::user_password
) inherits tomcat::params {

  include java::install
  include tomcat::install
  include tomcat::config
  include tomcat::service
}
