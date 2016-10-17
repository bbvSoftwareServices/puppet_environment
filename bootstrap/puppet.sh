#!/bin/bash

export PATH=/sbin:/usr/sbin:/bin:/usr/bin

# Bootstrap puppet on Debian 8 (Jessie) with the Debian 7 (Wheezy)
# release repo from puppetlabs, because Jessies repo is empty (20151221).

if ! dpkg -s puppet >/dev/null 2>&1; then
    echo Bootstrapping puppet
    if ! dpkg -s puppetlabs-release >/dev/null 2>&1; then		
        dpkg -i /vagrant/bootstrap/puppetlabs-release-pc1-jessie.deb 
        echo Updating package list
        
    fi
	apt-get update &&
    apt-get -y install puppet-agent puppetserver puppetdb puppetdb-termini </dev/null
    # Remove deprecated templatedir directive in puppet.conf (comes from deb itself)
    sed -i '/^templatedir/d' /etc/puppet/puppet.conf
    # Remove unused default factpath directive causing warnings
    sed -i '/^factpath/d' /etc/puppet/puppet.conf
fi

# Bootstrap apt-transport-https use for debian repositories via https
apt-get install -y apt-transport-https

# EOF