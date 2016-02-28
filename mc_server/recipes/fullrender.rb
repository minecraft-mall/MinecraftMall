#
# Cookbook Name:: mc_server
# Recipe:: fullrender
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

execute 'fullrender' do
  command <<-EOS
    mcrcon -H 127.0.0.1 -p "#{data['password']}" "/dynmap fullrender world"
  EOS
end