user 'test1' do
    action :delete
end

group 'test-group' do
    action :delete
end

directory '/tmp/test1' do
    action :delete
end