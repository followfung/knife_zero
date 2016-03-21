# knife_zero
knife-zero chef repository. Use this to deploy our VMs, develop cookbooks, and test applications on Vagrant.

## Quickstart
1. Install [ChefDK](https://downloads.chef.io/chef-dk/)
2. add ChefDK & Ruby to path
3. `chef gem install knife-zero`
4. Ready to go!

## Platform
This configuration has been tested (and works) on Windows 7 and Windows 10. It *should* work on other platforms provided your environment is set up the same:
- ChefDK `v0.11.2`
- knife-zero `v1.15.2`
- Vagrant `v1.8.1`
- vagrant-berkshelf `v4.1.0`
- vagrant-omnibus `v1.4.1`

## Deploying to a remote server
1. `knife zero bootstrap SERVER_IP [-x USER] [--sudo]`
2. Update the generated node.json file with attributes/roles
3. `knife zero converge 'name:NODENAME' [-x USER] [-- sudo]`

More documentation about knife-zero [here](https://knife-zero.github.io/)

## Vagrant test environment 
1. Install [Vagrant](https://www.vagrantup.com/)
2. Install vagrant-berkshelf plugin `vagrant plugin install vagrant-berkshelf`
3. Install vagrant-omnibus plugin `vagrant plugin install vagrant-omnibus`
4. Configure Vagrantfile with desired attributes/roles
5. `vagrant up`

More documentation about Vagrant [here](https://www.vagrantup.com/docs/)

## Developing cookbooks
1. Update the Berksfile to reference a cookbook in the site-cookbooks folder. e.g.: `cookbook 'lits_vm', path: 'site-cookbooks/lits_vm'`
2. Delete Berksfile.lock file
3. Deploy configuration to remote server or use Vagrant

More documentation about Chef [here](https://docs.chef.io/)
