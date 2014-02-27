node 'puppet01', 'client01' {
  include puppet
  file { '/tmp/hello':
   content => "Hello, world\n",
  }
}
