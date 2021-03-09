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

#Link basics from cp-ansible
ln -s ../../cp-ansible/*.yml ./
rm hosts_example.yml
ln -s ../../cp-ansible/*.cfg ./

#SymLink/Copy base into playbook scope
ln -fs ../.ansible-base/* ./

#Add and make 1st commit
#git checkout -b $PROJECT_DIR
#git add ./*
#git commit -m"Initial Example Build Out for $PROJECT_DIR"

echo "Done"