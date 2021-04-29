##Docker
### Since Katacoda has very little support for VT-x, we will use Docker as provider. Therefore, we need to use a vagrant image that supports Docker.
### For the purpose of this tutorial we will use tknerr/baseimage-ubuntu-18.04

Initialize the box directory with

`vagrant init tknerr/baseimage-ubuntu-18.04`{{execute interrupt}}

then start the box, for the first time:

`vagrant up --provider=docker`{{execute interrupt}}

ssh into the box with

`vagrant ssh`{{execute interrupt}}