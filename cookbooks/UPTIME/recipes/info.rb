# block_device
# chef_packages
# command
# counters
# cpu
# current_user
# dmi
# domain
# etc
# filesystem
# fqdn
# hostname
# idletime
# idletime_seconds
# ipaddress
# kernel
# keys
# languages
# lsb
# macaddress
# memory
# network
# ohai_time
# os
# os_version
# platform
# platform_family
# platform_version
# recipes
# roles
# tags
# uptime
# uptime_seconds
# user
# virtualization

bash "print name" do
  code %! 
   echo #{node["uptime"]} 
   echo #{node["roles"]}
   echo #{node["user"]}
  !
end

ruby_block "print something" do
  block do
    puts "#{node["platform"]} #{node["platform_version"]}"
  end
  action :create
end
