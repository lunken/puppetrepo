node 'puppet01', 'client01' {
  include puppet
  include sshd
  include ntp
  file { '/tmp/hello':
  content => "Hello, world\n",
  }
}
