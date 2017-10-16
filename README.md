# DevOps-Project
A repository for resources pertaining to this DevOps project, includin YAML files, Dockerfiles, Vagrantfiles etc.

Overview:

- AWS Scripts: Shell Scripts for provisioning the AWS master server that we used for running ansible files, as a Zabbix server, and a Machine to Provision others via terraform - everything was based in the cloud

- Ansible hosts: The files required to control our dynamic inventory for Ansible, where Ansible can use any specified AWS instances as hosts to provision

- Ansible Playbooks: Playbooks used to configure and install software on our Ansible hosts.

- Terraform: Some configuration files for Terraform to work, and the .tf script for setting up instances within our EC2 VPC

- Zabbix files: An Ansible playbook for configuring agents as a Zabbix-agent, and configuration files that the agents may need to pull
