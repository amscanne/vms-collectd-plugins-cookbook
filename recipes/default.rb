#
# Cookbook Name:: vms-collectd-plugins
# Recipe:: default
#
# Copyright 2013, Gricentric Inc.
#

include_recipe "apt"

::Chef::Resource::AptRepository.send(:include, Gridcentric::Helpers)

if not platform?("ubuntu")
  raise "Unsupported platform: #{node["platform"]}"
end

apt_repository "vms-collectd-plugins" do
  uri vms_collectd_plugins_repo
  components ["gridcentric", "multiverse"]
  key gridcentric_key
end

package "vms-collectd-plugins" do
  action :install
end
