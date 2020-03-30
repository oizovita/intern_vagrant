# -*- mode: ruby -*-
# vi: set ft=ruby :

dir = $dir ||= File.expand_path(File.dirname(__FILE__))

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.synced_folder ".", "/home/vagrant/code"
  config.vm.provision :shell, path: dir + "/setup.sh"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end
  
end
