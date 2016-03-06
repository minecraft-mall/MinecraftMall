#
# Cookbook Name:: mc_server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

data = node[cookbook_name][recipe_name]

cookbook_file "#{data['wk_dir']}\\#{data['file']}" do
  source data['file']
end

data['paths'].each do |key, dir|
  powershell_script "#{key}_rcon" do
    architecture :x86_64
    cwd data['wk_dir']
    code <<-EOS
      Copy-Item -Force -Path .\\#{data['file']} -Destination #{dir}
    EOS
  end
end
