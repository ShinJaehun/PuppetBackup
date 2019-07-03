class hello::test_file {
  file {'/tmp/hello':
    content => "Hello, puppet!\n",
  }
}
