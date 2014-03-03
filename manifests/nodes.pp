node 'puppet01', 'client01' {
  include puppet
  include sshd
  file { '/tmp/hello':
  content => "Hello, world\n",
  }
}
