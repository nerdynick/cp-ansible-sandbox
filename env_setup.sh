#!/bin/bash

set -o nounset \
    -o errexit \
    -o verbose
    
PROJECT_DIR=$1

#Make Project Directory and Change into it
mkdir $PROJECT_DIR
cd $PROJECT_DIR

#Setup Project as a GIT repo
git init

#Checkout/Clone CP-ANSIBLE
git submodule add https://github.com/confluentinc/cp-ansible.git

#SymLink/Copy base into playbook scope
ln -s cp-ansible/roles
ln -s cp-ansible/tasks
ln -s cp-ansible/filter_plugins
cp cp-ansible/ansible.cfg ansible.cfg
cp cp-ansible/all.yml all.yml

#Add and make 1st commit
git add *
git commit -m"Initial Env Build Out"