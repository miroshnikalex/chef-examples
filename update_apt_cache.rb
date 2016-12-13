apt_update 'Update apt cache onse in a two days' do
    frequency 172_800
    action :periodic
end