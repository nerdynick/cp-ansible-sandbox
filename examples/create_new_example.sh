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
cp -n ../../cp-ansible/*.yml ./
cp -n ../../cp-ansible/*.cfg ./
rm hosts_example.yml

#SymLink/Copy base into playbook scope
ln -fs ../.ansible-base/* ./

#Add and make 1st commit
#git checkout -b $PROJECT_DIR
git add ./*
git commit -m"Initial Example Build Out for $PROJECT_DIR"

echo "Done"