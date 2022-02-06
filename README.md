FICOXPress CI Test
==================


# Getting started
On a Linux box, simply type make and it will build a container with the proper configuration / dependencies and launch the test
` make`

## Linux pre-requisite (if you don't want to use containers)
This test is based on Ubuntu. It appears the FICOXpress library installer is sensitive to the distro so it didn't work with a barebone alpine. I therefore picked Ubuntu so you should use Ubuntu to ensure it works but I assume that CentOS / RedHat would work as well. The same dependencies are documented in the Dockerfile
- Install docker
`apt-get install update
 apt-get install docker.io`
- Update your user with the docker group
`newgrp docker
 usermod -aG docker ${USER}`
 
 You can also be lazy and simply do sudo chmod 666 /var/run/docker.sock but it won't be persistant
 
 - Install python & pip
 `apt-get install python3.6 python3-pip`

 - Install FICOXpress library
 `apt-get install xpress==8.13.3

## Makefile targets
- all
  - `make` or `make all` are to be used on a linux host. it will build the container and run the test with the Community license
- builld_container
  - builds the container with all the dependencies and test code
- test
  - run interactive test using the container and community license
- test_CI
  - run non-interactive test using the container and community license

# Linux Host on MacOS
It is recommended to use a Linux VM on your MacOS so you can ensure you can test with an environment similar to the community. VirtualBox is a free VM that works for this along with an Ubuntu image. Some quirks to be aware of to save time:
- Configure VirtualBox with at least 15GB disk space for the VM or else you'll run out of space
- Configure the clipboard to be bidirectional
  - You need to install the VirtualBox client extensions in your linux Host for the clipboard to work - it will add an ISO to your box and the installation will start automatically
