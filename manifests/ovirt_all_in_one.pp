# == Class: role::ovirt_all_in_one
class role::ovirt_all_in_one {

  include profile::base
  include profile::ovirt::all_in_one

}
