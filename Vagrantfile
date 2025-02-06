# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box_check_update = false

Vagrant.configure("2") do |config|
      config.vm.network "private_network", type: "dhcp"
    end
    #Utility server
      config.vm.define "utility" do |utl|
        utl.vm.hostname = "utilityserver.srg.com"
        utl.vm.box = "gbailey/amzn2"
        utl.vm.network :private_network, ip: "10.10.10.102"
        config.vm.box_check_update = false
        config.vm.provision :shell, path: "install_git.sh"
        config.vm.provider "virtualbox" do |vb|
          vb.gui = false
          vb.memory = "2048"
          vb.cpus = 2
       end
      end
    #App server
    config.vm.define "app" do |app|
      app.vm.hostname = "appserver.srg.com"
      app.vm.box = "centos/8"
      app.vm.network :private_network, ip: "10.10.10.103"
    end
  
    #DB server
    config.vm.define "db" do |db|
      db.vm.hostname = "dbserver.srg.com"
      db.vm.box = "centos/8"
      db.vm.network :private_network, ip: "10.10.10.104"
    end
  
    #Mail server
    config.vm.define "mail" do |mail|
      mail.vm.hostname = "mailserver.srg.com"
      mail.vm.box = "centos/8"
      mail.vm.network :private_network, ip: "10.10.10.105"
    end
  
    config.vm.provider "virtualbox" do |vb|
       vb.gui = false
       vb.memory = "2048"
       vb.cpus = 2
    end
  end