#!/bin/bash

export PATH=/sbin:/usr/sbin:/bin:/usr/bin

# Bootstrap apt-transport-https use for debian repositories via https
apt-get install -y apt-transport-https
# Install mc git joe
apt-get install -y joe mc git
if ! dpkg -s puppet >/dev/null 2>&1; then
    echo Bootstrapping puppet
    if ! dpkg -s puppetlabs-release >/dev/null 2>&1; then		
        dpkg -i /vagrant/bootstrap/puppetlabs-release-pc1-jessie.deb 
        echo Updating package list
        
    fi
	apt-get update &&
    apt-get -y install puppet-agent puppetserver puppetdb puppetdb-termini </dev/null
fi
apt-get -y upgrade
# EOF