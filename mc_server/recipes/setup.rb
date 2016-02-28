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
include_recipe "#{cookbook_name}::DynamicWebBaseMap"
include_recipe "#{cookbook_name}::mcrcon"
include_recipe "#{cookbook_name}::start"

ruby_block "sleep" do
  block do
    4.times do |i|
      sleep 60
      Chef::Log::debug ((i + 1) * 60).to_s
    end
  end
end

include_recipe "#{cookbook_name}::fullrender"

ruby_block "sleep" do
  block do
    4.times do |i|
      sleep 60
      Chef::Log::debug ((i + 1) * 60).to_s
    end
  end
end
