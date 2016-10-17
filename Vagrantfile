# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  config.vm.provision 'shell', path: 'bootstrap/puppet.sh'
  
  config.vm.define 'puppetmaster', autostart: true do |node|
    node.vm.hostname = 'puppetmaster.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.12'
    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 1024
    end
  end
  
  config.vm.define 'puppetclient1', autostart: true do |node|
    node.vm.hostname = 'puppetclient1.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.13'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 512
    end
  end
  
  config.vm.define 'puppetclient2', autostart: true do |node|
    node.vm.hostname = 'puppetclient2.v.bbvsws.de'
    node.vm.network 'private_network', ip: '192.168.179.14'    
    node.vm.provider 'virtualbox' do |vb|
      # noinspection RubyResolve
      vb.memory = 512
    end
  end
 
end
