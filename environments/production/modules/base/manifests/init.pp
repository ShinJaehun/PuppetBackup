class base inherits base::params {

    user {"deploy" :
      ensure    => present, 
      uid       => 5001, 
      password  => '$1$WD98.uaZ$cxx30x/K3FXQrljxsvBIu/',
      home      => '/home/deploy'
    }
    
    user {"dojo" :
      ensure  => absent, 
    }

    file { '/etc/motd': 
      ensure   => file, 
      owner    => 'root',
      content  => "
      
         This server is a property of XYZ Inc.
         
         SYSTEM INFO 
         ============
         
         Hostname     : ${::fqdn}
         IP Address   : ${::ipaddress}
         Memory       : ${::memory['system']['total']}
         Cores        : ${::processors['count']}
         OS           : ${::os['distro']['description']}
      
      "
    }

#    package { [ "tree", "unzip", "git", "ntp", "wget"  ]:
#      ensure  => installed
#    }
    
    service { $::base::ntp_service: 
      ensure  => running, 
      enable  => true, 
      
    }
    
}
