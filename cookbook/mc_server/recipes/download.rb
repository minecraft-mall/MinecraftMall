#
# Cookbook Name:: mc_server
# Recipe:: download
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

directory data['dir'] do
  recursive true
  action :create
end

data['files'].each do |key, val|
  remote_file "#{data['dir']}\\#{key}" do
    source val
    action :create
  end
end