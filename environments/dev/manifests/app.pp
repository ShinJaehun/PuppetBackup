#node 'vm1801.shinjaehun.com' {
##  include hello::test_file
##  include prefs
# 
#  notify{"********** vm1801 **********": }
#  include tomcat
#}
#
#node 'vm1802.shinjaehun.com' {
#  notify{"********** vm1802 **********": }
##  include base
#
#  class {'::tomcat':
#    user_name => 'serious',
#    user_password => 'dkttkfl55'
#  }
#}

node 'vm1803.shinjaehun.com' {
 
  notify{"********** vm1803 **********": }
  include tomcat
}

#node default {
#  notify{"checkpoint01":
#    message => "
#      ********** default block **********
#      Applying default node
#    "
#  }
#}
