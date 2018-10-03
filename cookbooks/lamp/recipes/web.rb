#
# Cookbook:: lamp
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2'

template node['lamp']['index_path'] do
  source 'index.erb'
  variables ({ipaddress: node['ipaddress']})
end

service 'apache2' do
  action [:start, :enable]
end
