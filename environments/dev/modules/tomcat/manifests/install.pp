class tomcat::install inherits tomcat {
  package{ $::tomcat::packages :
    ensure => installed,
    require => Package['openjdk-8-jre']
  }
}
