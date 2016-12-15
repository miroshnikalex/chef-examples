#
# Cookbook Name:: www-server-install
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group 'web-admin'

user 'web-admin' do
	group 'web-admin'
end

package 'Install Apache' do
    case node[:platform]
    when 'redhat', 'centos', 'fedora'
	package_name 'httpd'
    when 'ubuntu', 'debian'
	package_name 'apache2'
    end
end

service 'www' do
    case node['platform']
    when 'centos','redhat','fedora'
	service_name 'httpd'
    when 'ubuntu','debian'
	service_name 'apache2'
    end
    supports :restart => true
    action [ :enable, :start ]
end

template '/var/www/html/indef.html' do
    source 'index.html.erb'
    mode '0644'
    owner 'web-admin'
    group 'web-admin'
end
