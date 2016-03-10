# knife_zero
knife-zero chef repository. Use this to deploy our VMs, develop cookbooks, and test applications on Vagrant.

## Quickstart
- Install ChefDK 0.11.2
- add ChefDK & Ruby to path
- chef gem install knife-zero
- Ready to go!

## Deploying to a remote server
1. `knife zero bootstrap SERVER_IP [-x USER] [--sudo]`
2. Update the generated node.json file with attributes/roles
3. `knife zero converge 'name:NODENAME' [-x USER] [-- sudo]`

More docs about this [here](https://knife-zero.github.io/)

## Developing cookbooks
1. Update the Berksfile to reference a cookbook in the site-cookbooks folder. e.g.: `cookbook 'lits_vm', path: 'site-cookbooks/lits_vm'`
2. Delete Berksfile.lock file
3. Deploy configuration to remote server or use Vagrant

## Vagrant test environment
1. Configure Vagrantfile with desired attributes/roles
2. `vagrant up`
