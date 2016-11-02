# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision 'shell', path: 'bootstrap/puppet.sh'
  
  config.vm.provider :virtualbox do |vb|
	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
	vb.linked_clone = true
  end
  
  config.vm.define 'puppet', autostart: true do |node|
    node.vm.hostname = 'puppet.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.12'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 4096 
	  vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  
    end
  end
  
  config.vm.define 'client1', autostart: true do |node|
    node.vm.hostname = 'client1.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.13'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 2048
	  vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  
    end
  end
  
  config.vm.define 'client2', autostart: true do |node|
    node.vm.hostname = 'client2.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.14'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 2048
	  vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  
    end
  end

  config.vm.define 'client3', autostart: true do |node|
    node.vm.hostname = 'client3.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.15'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 2048
	  vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  
    end
  end

  

 
 
end
