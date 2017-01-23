# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "chisel" do |chisel|
          chisel.vm.box = "bmcgonigle/centos68"
	  chisel.vm.hostname = "chisel.home"
	  chisel.vm.provision "shell",
            path: "chisel.provision.sh"
  end

end
