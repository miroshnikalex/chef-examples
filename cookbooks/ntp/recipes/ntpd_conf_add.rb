template '/etc/ntp.conf' do
	source "ntp.conf.erb"
	variables( :ntp_server => "time.nist.gov" )
end
