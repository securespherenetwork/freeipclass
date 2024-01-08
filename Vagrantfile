# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

VAGRANT_BOX         = "centos/8"
VAGRANT_BOX_VERSION = "2011.0"
CPUS_FREEIPA_NODE    = 2
CPUS_CLIENT_NODE    = 1
MEMORY_FREEIPA_NODE  = 2048
MEMORY_CLIENT_NODE  = 1024
CLIENT_NODES_COUNT  = 2


Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  # Freeipa authentication Server
  config.vm.define "freeipa" do |node|
  
    node.vm.box               = VAGRANT_BOX
    node.vm.box_check_update  = false
    node.vm.box_version       = VAGRANT_BOX_VERSION
    node.vm.hostname          = "freeipa.securespherenetwork.sec"

    node.vm.network "private_network", ip: "172.16.16.100"
  
    node.vm.provider :virtualbox do |v|
      v.name    = "freeipa"
      v.memory  = MEMORY_FREEIPA_NODE
      v.cpus    = CPUS_FREEIPA_NODE
    end
  
    node.vm.provider :libvirt do |v|
      v.memory  = MEMORY_FREEIPA_NODE
      v.nested  = true
      v.cpus    = CPUS_FREEIPA_NODE
    end
  
    #node.vm.provision "shell", path: "bootstrap_freeipa.sh"
  
  end


  # Free ipa client Nodes
  (1..CLIENT_NODES_COUNT).each do |i|

    config.vm.define "client#{i}" do |node|

      node.vm.box               = VAGRANT_BOX
      node.vm.box_check_update  = false
      node.vm.box_version       = VAGRANT_BOX_VERSION
      node.vm.hostname          = "client#{i}.securespherenetwork.sec"

      node.vm.network "private_network", ip: "172.16.16.10#{i}"

      node.vm.provider :virtualbox do |v|
        v.name    = "client#{i}"
        v.memory  = MEMORY_CLIENT_NODE
        v.cpus    = CPUS_CLIENT_NODE
      end

      node.vm.provider :libvirt do |v|
        v.memory  = MEMORY_CLIENT_NODE
        v.nested  = true
        v.cpus    = CPUS_CLIENT_NODE
      end

      #node.vm.provision "shell", path: "bootstrap_client.sh"

    end

  end

end