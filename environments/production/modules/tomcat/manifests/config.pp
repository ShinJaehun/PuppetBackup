class tomcat::config inherits tomcat {
  file{ $::tomcat::config_path:
#    source => 'puppet:///modules/tomcat/tomcat-users.xml',
    content => template('tomcat/tomcat-users.xml.erb'),
    mode => '0644',
#    owner => 'tomcat',
    group => $::tomcat::group,
    notify => Service['tomcat8']
  }
}
