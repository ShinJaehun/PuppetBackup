class tomcat::params {
  $group = 'tomcat8'
  $config_path = '/var/lib/tomcat8/conf/tomcat-users.xml'
  $packages = [ 'tomcat8','tomcat8-docs','tomcat8-examples','tomcat8-admin' ]
  $service_name = 'tomcat8'
  $service_state = running

  $user_name = 'ubuntu'
  $user_password = 'dkttkfl'
}

