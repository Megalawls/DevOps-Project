#!usr//bin/env bash -ex

#Installs and updates python/pip
sudo -H apt-get -y update
sudo -H apt-get install -y python-pip
python --version

sudo -H pip install --upgrade pip

#Installs ansible and creates the ansible folder
sudo -H pip install ansible
sudo -H mkdir /etc/ansible

#Downloads files required for ansible firing up EC2 instances
sudo -H wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py /etc/ansible/ec2.py
sudo -H wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini /etc/ansible/ec2.ini