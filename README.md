Description
===========

Installs the collectd plugins for Gridcentric VMS.

The plugin source is hosted at http://github.com/gridcentric/vms-collectd-plugins.

Requirements
============

This cookbook has been tested with Chef 0.10.12.

Platforms
---------

This cookbook works on ubuntu.

Cookbooks
---------

This cookbook is dependent on the following cookbooks:

* apt

External Dependencies
---------------------

The collectd plugins installed by this cookbook gather statistics from
Gridcentric VMS. This cookbook should be installed on a VMS-enabled Openstack
host. The vms-collectd-plugins package will also automatically install collectd
on the host if it is not already installed.

Attributes
==========

The attributes under `node["vms"]["repo"]` specify the package repository
location. These should be left at the default value unless intalling from a
custom repository.
