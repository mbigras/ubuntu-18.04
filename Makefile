all: welcome

welcome:
	@echo "Welcome to this repository!"
	@echo "The purpose of this repo is to make the"
	@echo "mbigras/ubuntu-18.04 Vagrant box"
	@echo "Read the Makefile to see which targets are available"

up:
	vagrant up
box:
	ansible-playbook box.yml

package:
	vagrant package --output ubuntu-18.04.box
	vagrant box add mbigras/ubuntu-18.04 ubuntu-18.04.box

# doesn't work
# upload:
# 	vagrant upload mbigras/ubuntu-18.04

clean:
	rm ubuntu-18.04.box
