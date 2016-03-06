#
# Cookbook Name:: mc_server
# Recipe:: settings
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

cookbook_file "#{data['dir']}\\#{data['eula']}" do
   source data['eula']
   action :create
 end
 
 template "#{data['dir']}\\#{data['properties']}" do
  source data['tem_properties']
  action :create
end
