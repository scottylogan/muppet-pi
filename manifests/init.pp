# == Class: muppets
#
# Full description of class muppets here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'muppets':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class pi {

  user { 'pi':
    ensure => absent,
  }

  group { 'pi':
    ensure => absent,
  }

  file { '/boot/config.txt':
    ensure => present,
    source => "puppet:///modules/${module_name}/boot/config.txt",
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  
  file { '/etc/hostname':
    ensure => absent,
  }

  file { '/etc/network/interfaces':
    ensure => present,
    source => "puppet:///modules/${module_name}/etc/network/interfaces",
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/hosts':
    ensure => present,
    source => "puppet:///modules/${module_name}/etc/hosts",
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
