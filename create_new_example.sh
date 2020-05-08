#!/bin/bash

set -o nounset \
    -o errexit \
    -o verbose
    
PROJECT_DIR=$1

git checkout -b "example_$PROJECT_DIR"

#Make Project Directory and Change into it
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

#SymLink/Copy base into playbook scope
ln -s ../cp-ansible/roles
ln -s ../cp-ansible/tasks
ln -s ../cp-ansible/filter_plugins
cp ../cp-ansible/ansible.cfg ansible.cfg
cp ../cp-ansible/all.yml all.yml

#Setup Common
touch hosts.yml
mkdir -p group_vars/all
cd group_vars/all
ln -s ../../../resources/group_vars/all/base.yml
cd ../../
ln -s ../resources/pem/
ln -s ../resources/ssl-certs/

#Add and make 1st commit
git add ./*
git commit -m"Initial Example Build Out"