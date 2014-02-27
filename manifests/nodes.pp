node 'puppet01' {
  include puppet
  file { '/tmp/hello':
   content => "Hello, world\n",
  }
}
