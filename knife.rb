local_mode true
chef_repo_path File.expand_path('../', __FILE__)
cookbook_path [
  File.expand_path('../cookbooks', __FILE__),
  File.expand_path('../berks-cookbooks', __FILE__)
]

knife[:editor] = "vi"

knife[:ssh_attribute] = 'knife_zero.host'
knife[:use_sudo] = true
knife[:host_key_verify] = false

knife[:before_bootstrap] = 'berks vendor'
knife[:before_converge]  = 'berks vendor'

# update cookbook dependencies automatically for development
# knife[:before_bootstrap] = 'berks update && berks vendor'
# knife[:before_converge]  = 'berks update && berks vendor'

# CHEF-18 DEPRECATION REMEDIATION
# https://docs.chef.io/deprecations_local_listen.html
knife[:listen] = true

## use specific key file to connect server instead of ssh_agent(use ssh_agent is set true by default).
# knife[:identity_file] = "~/.ssh/id_rsa"

## Attributes of node objects will be saved to json file.
## the automatic_attribute_whitelist option limits the attributes to be saved.
knife[:automatic_attribute_whitelist] = %w(
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
)
