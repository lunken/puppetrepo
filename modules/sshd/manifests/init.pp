# Install and Manage openssh-server for Ubuntu
class sshd {
  package { 'openssh-server':
  ensure    => installed,
  }

service { 'ssh':
  ensure    => running,
  enable    => true,
  require   => Package['openssh-server'],

  hasstatus => false,
  status    => '/etc/init.d/ssh status|grep running',
  }
}
