#
# Cookbook Name:: mc_server
# Attribute:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



default['mc_server']['root']['dir'] = 'C:\minecraft'
default['mc_server']['root']['wk_dir'] = "#{Chef::Config[:file_cache_path].gsub(/\//, '\\')}\\mc_server"

default['mc_server']['jre']['file'] = 'jre-8u73-windows-x64.exe'
default['mc_server']['jre']['dir'] = node['mc_server']['root']['wk_dir']
default['mc_server']['jre']['INSTALLDIR'] = 'C:\Java'

default['mc_server']['download']['files']['installer'] = 'http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1722/forge-1.8.9-11.15.1.1722-installer.jar'
default['mc_server']['download']['files']['universal'] = 'http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1722/forge-1.8.9-11.15.1.1722-universal.jar'
default['mc_server']['download']['dir'] = node['mc_server']['root']['dir']

default['mc_server']['install']['dir'] = node['mc_server']['root']['dir']
default['mc_server']['install']['jar'] = ''
