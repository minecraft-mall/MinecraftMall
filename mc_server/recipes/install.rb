#
# Cookbook Name:: mc_server
# Recipe:: install
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

powershell_script "install_forge_minecraft_server" do
  cwd data['dir']
  code <<-EOS
    "#{data['java']}" -jar .\\#{data['jar']} nogui --installServer
  EOS
end