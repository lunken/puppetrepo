# Install and Manage ntp for Ubuntu
class ntp {
  package { 'ntp':
  ensure    => installed,
  }

file { '/etc/ntp.conf':
  content   => template ('ntp/ntp.conf.erb'),
  owner     => 'root',
  group     => 'root',
  mode      => '0644',
  require   => Package['ntp'],
  }

service { 'ntp':
  ensure    => running,
  enable    => true,
  require   => [Package['ntp'],
               File['/etc/ntp.conf']],

  hasstatus => false,
  status    => '/etc/init.d/ntp status|grep running',
  }
}

