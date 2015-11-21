#!/usr/bin/env bash

echo "=================================================="
echo "                                     Update system"
echo "=================================================="

#sudo aptitude update
#sudo aptitude upgrade -y

echo "=================================================="
echo "                         Checking for cfengine.deb"
echo "=================================================="

if [[ ! -e "/vagrant/cfengine-$(date -Idate).deb" ]]; then
    wget http://cfengine.package-repos.s3.amazonaws.com/community_binaries/cfengine-community_3.6.1-1_amd64.deb \
         -O /vagrant/cfengine-$(date -Idate).deb;
    echo "=================================================="
    echo "                                 Download finished"
    echo "=================================================="
fi

echo "=================================================="
echo "                               Installing CFEngine"
echo "=================================================="
sudo dpkg -i /vagrant/cfengine-$(date -Idate).deb
