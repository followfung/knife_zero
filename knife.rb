local_mode true
chef_repo_path    File.expand_path('../' , __FILE__)
cookbook_path   [ File.expand_path('../berks-cookbooks' , __FILE__) ]

knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true
knife[:host_key_verify] = false

## use specific key file to connect server instead of ssh_agent(use ssh_agent is set true by default).
# knife[:identity_file] = "~/.ssh/id_rsa"

## Attributes of node objects will be saved to json file.
## the automatic_attribute_whitelist option limits the attributes to be saved.
knife[:automatic_attribute_whitelist] = %w[
  fqdn
  os
  os_version
  hostname
  ipaddress
  roles
  recipes
  ipaddress
  platform
  platform_version
  platform_version
  cloud
  cloud_v2
  chef_packages
]

## knife.rb will be read twice at run. (before launch chef-zero locally and before run knife.)
## And configuration for chef-zero doesn't has key `color`.
if ARGV[0..1] == ["zero", "converge"] && ! Chef::Config.has_key?(:color)
  system('berks vendor')
end