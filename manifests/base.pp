class profile::base(
  $ntp_servers,
) {
  include ::ssh
  class { '::ntp':
    servers => $ntp_servers,
  }
  if $facts['os']['family'] == 'RedHat' {
      include ::profile::selinux
  }
}
