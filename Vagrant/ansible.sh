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
echo -e "\nRUNNING ANSIBLE [master/main.yml] ***************************************************\n"
ansible-playbook -i hosts master/main.yml
echo -e "\nRUNNING ANSIBLE [join_cluster/main.yml] *****************************************************\n"
ansible-playbook -i hosts join_cluster/main.yml