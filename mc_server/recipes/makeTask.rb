#
# Cookbook Name:: mc_server
# Recipe:: makeTask
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

template "#{data['dir']}\\#{data['output']}" do
  source data['template']
end

powershell_script "regist_Task" do
  cwd data['dir']
  code <<-EOS
    $str = Get-Content .\\#{data['output']}
    Register-ScheduledTask -Xml $str -TaskName "#{data['name']}"
  EOS
end