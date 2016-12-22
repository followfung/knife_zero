# knife_zero
Use this to configure and deploy our VMs and develop cookbooks.

## Platform
This configuration has been tested (and works) on Windows 7 and Windows 10. It *should* work on other platforms provided your environment is set up the same:
- ChefDK 1.0.3
- knife-zero 1.17.1

## Quickstart
1. Install [ChefDK](https://downloads.chef.io/chef-dk/)
2. add ChefDK & Ruby to path
3. `chef gem install knife-zero`
4. Ready to go!

## Usage
We use the `knife-zero` gem to deploy and configure remote nodes. More documentation is available [here](https://knife-zero.github.io/).

### Deploying to a remote server
1. Set up data bags and/or roles of the node
2. `knife zero bootstrap root@SERVER_IP -N NODENAME -r "RUN_LIST"`

### Updating the configuration of an already provisioned server
1. Update the data bags and/or roles of the node
2. `knife zero converge 'name:NODENAME'`

## Developing
Example: If you wanted to develop on the lits_vm cookbook
1. `mkdir site-cookbooks && cd site-cookbooks`
2. `git clone https://github.com/ryersonlibrary/lits_vm.git`
3. Add this line to the Berksfile `cookbook 'lits_vm', path: 'site-cookbooks/lits_vm'`
4. Remove or comment the existing line `cookbook 'lits_vm', github: 'ryersonlibrary/lits_vm', tag: 'v0.3.4'`
5. Delete Berksfile.lock file
6. `berks`

More documentation about Chef [here](https://docs.chef.io/)
