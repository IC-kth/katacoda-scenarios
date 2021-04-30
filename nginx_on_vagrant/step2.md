![Docker](assets/docker_logo.png)
 
[Docker](https://www.docker.com/) is an open platform for developing, shipping, and running applications. Docker allows developers to separate the applications from the infrastructure, which ensures that software can be quickly delivered. 

Docker supplies the facility to package and run an application in a loosely isolated or segregated environment called a [container](https://www.docker.com/resources/what-container). Containers are lightweight and include everything required to run the application. This provides the benefit of not having to rely on local configurations and installed software on the host.

As mentioned in the previous step, Vagrant comes with support for using a multitude of providers, including using Docker as a provider. 
This qualifies Docker containers to replace virtual machines for backing the development environments and provides an improved workflow for developing Dockerfiles.

The [Docker documentation](https://docs.docker.com/) provides a more in-depth overview of the available features as well as numerous examples.
   
📍 **Note:** *Since Katacoda has very little support for VT-x, we will use Docker as provider. Therefore, we need to use a vagrant image that supports Docker.*
      
For the purpose of this tutorial we will use  the ```tknerr/baseimage-ubuntu-18.04``` image.

🔔 **Do you remember?** *In the previous step we discussed some frequently used Vagrant commands. Now we will see them in action!*

First we need to initialize the box directory (created in the previous step) with the above-mentioned Vagrant image.

`vagrant init tknerr/baseimage-ubuntu-18.04`{{execute interrupt}}

Then we start the box (the Vagrant environment), for the first time by running the command:

`vagrant up --provider=docker`{{execute interrupt}}

Now let's try to ssh into the box using:

`vagrant ssh`{{execute interrupt}}