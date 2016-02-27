#
# Cookbook Name:: mc_server
# Recipe:: jre
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

cookbook_file "#{data['dir']}\\#{data['file']}" do
  source data['file']
  action :create_if_missing
end

powershell_script "install_jre" do
  cwd data['dir']
  code <<-EOS
    .\\#{data['file']} /s INSTALLDIR=#{data['INSTALLDIR']}
  EOS
  action :run
end
