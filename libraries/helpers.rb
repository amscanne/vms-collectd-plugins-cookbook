#
# Cookbook Name:: vms-collectd-plugins
# Library:: helpers
#
# Copyright 2013, Gridcentric Inc.
#

module Gridcentric
  module Helpers
    def vms_collectd_plugins_repo
      return [ node["vms"]["repo"]["url"].chomp("/"),
               "public",
               "vms-collectd-plugins",
               "ubuntu"
             ].join("/")
    end

    def gridcentric_key
      return [ node["vms"]["repo"]["url"].chomp("/"),
               "gridcentric.key"
             ].join("/")
    end
  end
end
