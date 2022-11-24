#!/bin/bash

# Update package list
sudo apt-get update

# Install dependencies
sudo apt-get install -y python3-pip sshpass
sudo -H pip3 install --upgrade pip

# Install Ansible
sudo -H pip install ansible

# Run Ansible playbooks
echo -e "\nRUNNING ANSIBLE [clusters.yml] **************************************************\n"
ansible-playbook -i hosts clusters.yml
echo -e "\nRUNNING ANSIBLE [master.yml] ***************************************************\n"
ansible-playbook -i hosts master.yml
echo -e "\nRUNNING ANSIBLE [join.yml] *****************************************************\n"
ansible-playbook -i hosts join.yml