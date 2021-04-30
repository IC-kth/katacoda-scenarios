
![Vagrant](./assets/images/Vagrant_logo.png)

Developed by HashiCorp, [Vagrant](https://www.vagrantup.com/) is a command-line tool for building and managing virtual machine environments in a single workflow. 

With a focus on automation and an easy-to-use workflow, Vagrant provides the following benefits:
   - it lowers the development environment setup time;
   - it increases production parity;
   - it makes the "works on my machine" excuse as plausible as "the dog ate my homework". 🐶 📓

Vagrant provides easily configurable and portable work environments built on top of high-standard technologies. Vagrant can provision machines on top of VMware, VirtualBox, AWS, Docker, and [other providers](https://www.vagrantup.com/docs/providers).

Some of the most commonly used Vagrant commands are:

|              Command                     | Action |
| ---------------------------------------- | ------ |
| sudo apt install vagrant | installs vagrant |
| vagrant -v |	lists the installed Vagrant version |
| vagrant init | initializes a new Vagrantfile |
| vagrant up |	launches the Vagrant environment |
| vagrant ssh |	SSH into the virtual machine |
| vagrant reload| restarts the virtual machine and loads a new Vagrantfile |

For now, we will focus on the first two in the following section, while we will return to the others at a later step of this tutorial.

The [Vagrant documentation](https://www.vagrantup.com/docs) provides a more in-depth overview of the available features.
### Installing Vagrant

First, we need to update the existing package versions and their dependencies to the latest available. We can do this by running the following command:

`sudo apt update`{{execute interrupt}}

Then we need to install Vagrant by executing

`sudo apt install vagrant`{{execute interrupt}}

📢 When prompted press **Y**.

💡 Tip: *To check that the installation was successful, run the following command `vagrant --version`{{execute interrupt}} that will print the installed Vagrant version.*
     
If you see the version printed in the terminal, congratulations! You have now installed Vagrant!

##Create a new directory for vagrant box

Now that we have Vagrant installed, we need to create a directory for Vagrant box. Let's call it box:

`mkdir box`{{execute interrupt}}

Then we need to move to the newly created directory by executing: 

`cd box`{{execute interrupt}}
