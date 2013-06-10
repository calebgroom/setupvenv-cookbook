python_virtualenv node["setupvenv"]["dir"] do
  owner node["setupvenv"]["user"]
  group node["setupvenv"]["group"]
  action :create
end

template "/home/#{node[:setupvenv][:user]}/.bash_profile" do
  source "bash_profile.erb"
  owner node["setupvenv"]["user"]
  group node["setupvenv"]["group"]
  mode 0755
end
