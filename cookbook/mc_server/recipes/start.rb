#
# Cookbook Name:: mc_server
# Recipe:: start.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

powershell_script "StartMinecraftServer" do
  code <<-EOS
    Start-ScheduledTask -TaskName "#{data['name']}"
  EOS
end