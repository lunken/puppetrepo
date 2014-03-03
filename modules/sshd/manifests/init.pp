# Install and Manage openssh-server for Ubuntu
class sshd {
  package { 'openssh-server':
  ensure    => installed,
  }

file { '/etc/ssh/sshd_config':
  source    => 'puppet:///modules/sshd/sshd_config',
  owner     => 'root',
  group     => 'root',
  mode      => '0644',
  require   => Package['ntp'],
  }

service { 'ssh':
  ensure    => running,
  enable    => true,
  require   => Package['openssh-server'],

  hasstatus => false,
  status    => '/etc/init.d/ssh status|grep running',
  }
}
