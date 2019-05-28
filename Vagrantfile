# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end


  config.vm.synced_folder ".", "/home/vagrant/.dotfiles"

  config.vm.provision "shell", inline: <<-SHELL
    sudo add-apt-repository ppa:ansible/ansible --yes
    sudo apt-get update
    sudo apt-get install ansible stow --yes
  SHELL
end
