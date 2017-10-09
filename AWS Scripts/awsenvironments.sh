#!/bin/bash

#Configures environment variables for AWS+Ansible
export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXX'
export AWS_SECRET_ACCESS_KEY='XXXXXXXXXXXXXXXXX'
echo "Access keys set"
export ANSIBLE_HOSTS=/etc/ansible/hosts/ec2.py
export EC2_INI_PATH=/etc/ansible/hosts/ec2.ini
echo "Ansible environments set"
export ANSIBLE_CONFIG=/etc/ansible/ansible.cfg
