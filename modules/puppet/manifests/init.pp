class puppet {
  file { '/usr/local/bin/papply':
  source => 'puppet:///modules/puppet/papply.sh',
  mode   => '0755',
  }

  file { '/usr/local/bin/pull-updates':
  source => 'puppet:///modules/puppet/pull-updates.sh',
  mode   => '0755',
  }

  file { '/home/lunken/.ssh/id_rsa':
  source => 'puppet:///modules/puppet/lunken.priv',
  owner  => 'lunken',
  mode   => '0600',
  }

  cron { 'run-puppet':
  ensure  => 'present',
  user    => 'lunken',
  command => '/usr/local/bin/pull-updates',
  minute  => '*/30',
  hour    => '*',
  }
}
