#
# Cookbook Name:: mc_server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

powershell_script "open_minecraft" do
  code <<-EOS
    netsh advfirewall firewall add rule name="#{data['name']}" dir=in localport=#{data['port']} protocol=TCP action=allow 
  EOS
end