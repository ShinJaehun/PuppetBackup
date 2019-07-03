node 'vm1809.shinjaehun.com' {
  include ::haproxy
  haproxy::listen { 'lb-01':
    collect_exported => false,
#    ipaddress        => $::ipaddress,
    ipaddress        => '172.30.0.113',
    ports            => '80',
  }
  haproxy::balancermember { 'vm01':
    listening_service => 'lb-01',
    server_names      => 'vm1801.shinjaehun.com',
    ipaddresses       => '172.30.0.105',
    ports             => '8080',
    options           => 'check',
  }
  haproxy::balancermember { 'vm02':
    listening_service => 'lb-01',
    server_names      => 'vm1802.shinjaehun.com',
    ipaddresses       => '172.30.0.106',
    ports             => '8080',
    options           => 'check',
  }
}

