#!/bin/bash

#Installs and updates python/pip
sudo -H apt-get -y update
sudo -H apt-get install -y python-pip
python --version

sudo -H pip install --upgrade pip
#Installs boto, which is required for EC2 bootup 
sudo pip install -U boto

#Installs ansible and creates the ansible folder
sudo -H pip install ansible
sudo -H mkdir /etc/ansible
sudo -H mkdir /etc/ansible/hosts

#Downloads files required for ansible firing up EC2 instances
sudo -H wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py /etc/ansible/hosts/ec2.py
sudo -H wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini /etc/ansible/hosts/ec2.ini
#Makes the python hosts script executable
sudo chmod 755 ec2.py

#Configures environment variables for AWS+Ansible
export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
export AWS_SECRET_ACCESS_KEY='XXXXXXXXXXXXXXXXXXX'
export ANSIBLE_HOSTS=/etc/ansible/hosts/ec2.py
export EC2_INI_PATH=/etc/ansible/hosts/ec2.ini

#Installs unzip,  wget, terraform
sudo -H apt-get install -y unzip
sudo -H apt-get install -y wget
wget https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_linux_amd64.zip
unzip terraform_0.9.8_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version