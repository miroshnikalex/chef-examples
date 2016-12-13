group 'test-group' do
    gid '4000'
end

user 'test1' do
    comment 'Just a random test user'
    uid '4000'
    gid '4000'
    home '/tmp/test1'
    shell '/bin/false'
    password 'random'
end
