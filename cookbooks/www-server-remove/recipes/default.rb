service 'www' do
    case node['platform']
    when 'centos','redhat','fedora'
	service_name 'httpd'
    when 'ubuntu','debian'
	service_name 'apache2'
    end
    action [:disable, :stop]
end

package 'web server' do
    case node['platform']
    when 'redhat','centos','fedora'
	package_name 'httpd'
    when 'ubuntu','debian'
	package_name 'apache2'
    end
    action [:purge]
end

file 'var/www/html/index.html' do
    action [:delete]
end
