#
# Cookbook Name:: mc_server
# Recipe:: DynamicWebBaseMap
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

directory data['dir'] do
  recursive true
end  

remote_file "#{data['dir']}\\#{data['file']}" do
  source data['source']
end

powershell_script "OpenDynamicWebBaseMap" do
  code <<-EOS
    netsh advfirewall firewall add rule name="#{data['name']}" dir=in localport=#{data['port']} protocol=TCP action=allow 
  EOS
end