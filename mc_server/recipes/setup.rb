#
# Cookbook Name:: mc_server
# Recipe:: setup
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "#{cookbook_name}::jre"
include_recipe "#{cookbook_name}::firewall"
include_recipe "#{cookbook_name}::download"
include_recipe "#{cookbook_name}::install"
include_recipe "#{cookbook_name}::settings"
include_recipe "#{cookbook_name}::makeTask"
include_recipe "#{cookbook_name}::start"
