# == Class: role::foreman_all_in_one
class role::foreman_all_in_one {

  include profile::base
  include profile::mysql::server
  include profile::foreman_proxy
  include profile::foreman
  include profile::puppet::server
  include profile::dhcp::server
  include profile::dns::server
  include profile::tftp::server

}
