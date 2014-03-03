# Install and Manage openssh-server for Ubuntu
class sshd {
  package { 'openssh-server':
  ensure    => installed,
  }

file { '/etc/ssh/sshd_config':
  content   => template ('sshd/sshd_config.erb'),
  owner     => 'root',
  group     => 'root',
  mode      => '0644',
  require   => Package['openssh-server'],
  }

service { 'ssh':
  ensure    => running,
  enable    => true,
  require   => [Package['openssh-server'],
               File['/etc/ssh/sshd_config']],

  hasstatus => false,
  status    => '/etc/init.d/ssh status|grep running',
  }
}
