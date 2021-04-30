# notice we also have a Vagrantfile. This file is responsible for configuring and performing the base setup of a vagrant box. You can find more information about this on https://www.vagrantup.com/docs/vagrantfile
# now, assume you want to automate the provisioning of a vagrant box so that nginx will be installed, configured, and started automatically. For larger projects, this uses a special provisioner such as Chef, Puppet, or Ansible. You can find more information on those here: https://www.vagrantup.com/docs/provisioning
# for our proof-of-concept, we can use some shell scripts.
# at the end of the vagrant file, you should see  the following lines:
# Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  # uncomment the last 4 (starting with config.vm.provision, and ending with SHELL)
  # replace the two apt-get commands with whatever you want the VM to do during its initial setup. In our case, we want it to install nginx and copy the html and the configuration files you have provided. your script should look somewhat like:
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y nginx
    sudo cp /vagrant/index.html /usr/share/nginx/html/index.html
    sudo cp /vagrant/nginx.conf /etc/nginx/nginx.conf
    sudo service nginx start
  SHELL
# destroy the vm with
`vagrant destroy`{{execute interrupt}}
# remake it with
`vagrant up --provider=docker`{{execute interrupt}}
# now, feel free to check whether nginx works by running
`vagrant ssh`{{execute interrupt}}
`wget http://127.0.0.1`{{execute interrupt}}
`cat index.html`{{execute interrupt}}
`exit`{{execute interrupt}}

🎉 **Congratulations!** 🎉 *You have fully automated the process!*