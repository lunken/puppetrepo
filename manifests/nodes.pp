# Nodes managed by puppet
node 'puppet01', 'client01' {
  include puppet
  include sshd
  include ntp
}
