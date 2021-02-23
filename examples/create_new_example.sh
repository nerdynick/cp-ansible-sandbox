#!/bin/bash

set -o nounset \
    -o xtrace
    
PROJECT_DIR=$1

#git checkout -b "example_$PROJECT_DIR"

#Make Project Directory and Change into it
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

#Copy skeleton
cp -nR ../.ansible-skeleton/* ./

#Copy basics from cp-ansible
cp -n ../../cp-ansible/all.yml main.yml

#SymLink/Copy base into playbook scope
ln -fs ../.ansible-base/* ./

#Add and make 1st commit
#git add ./*
#git commit -m"Initial Example Build Out"

echo "Done"