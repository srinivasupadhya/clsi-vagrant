# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise32"

  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, guest: 80, host: 3319

  config.vm.network :public_network

  config.vm.synced_folder "./data", "/vagrant_data"

  config.vm.provider :virtualbox do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end