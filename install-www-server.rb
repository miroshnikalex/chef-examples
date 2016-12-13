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