# Install and Manage ntp for Ubuntu
class ntp {
  package { 'ntp':
  ensure    => installed,
  }

file { '/etc/ntp.conf':
  source    => 'puppet:///modules/ntp/ntp.conf',
  owner     => 'root',
  group     => 'root',
  mode      => '0644',
  require   => Package['ntp'],
  }

service { 'ntp':
  ensure    => running,
  enable    => true,
  require   => Package['ntp'],

  hasstatus => false,
  status    => '/etc/init.d/ntp status|grep running',
  }
}

