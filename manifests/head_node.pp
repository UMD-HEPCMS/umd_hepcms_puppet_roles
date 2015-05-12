# == Class: role::head_node
#
# === Authors
#
# Trey Dockendorf <treydock@gmail.com>
#
# === Copyright
#
# Copyright 2015 Trey Dockendorf
#
class role::head_node {

  include profile::base
  include profile::nat
  include profile::foreman_proxy
  include profile::foreman
  include profile::puppet::server
  include profile::dhcp::server
  include profile::dns::server
  include profile::tftp::server

}
