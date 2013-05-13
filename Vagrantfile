require 'vagrant-ansible'
Vagrant::Config.run do |config|
  config.vm.define :lucid do |web_config|
    web_config.vm.box = "lucid32"
    web_config.vm.forward_port 80,8881
      web_config.vm.provision :chef_client do |chef|
        chef.chef_server_url = "https://api.opscode.com/organizations/linbynd"
        chef.validation_key_path = "./.chef/linbynd-validator.pem"
        chef.validation_client_name = "linbynd-validator"
        chef.node_name = "vinit_vagrantvm"
      end
   end

  config.vm.define :cloud do |db_config|
    db_config.vm.box = "Ubuntu12.04cloud"
    db_config.vm.network :bridged
      db_config.vm.provision :chef_client do |chef|
        chef.chef_server_url = "https://api.opscode.com/organizations/linbynd"
        chef.validation_key_path = "./.chef/linbynd-validator.pem"
        chef.validation_client_name = "linbynd-validator"
        chef.node_name = "vagrant-ubuntu-precise-32"
    end
  end

  config.vm.define :ansiubu do |ansi_config|
    ansi_config.vm.box = "lucid32"
    ansi_config.vm.network :bridged,
    ansi_config.vm.host_name = "ansiubu"
    ansi_config.vm.provision :ansible do |ansible|
        ansible.playbook = "setup-ansiubu.yml"
        ansible.hosts = "ansiubu"
    end
  end


#### Need to Check the Salt Version Installation 
#  config.vm.define :saltubu do |salt_config|
#    salt_config.vm.box = "lucid32"
#    salt_config.vm.synced_folder "srv/", "/srv"
#    salt_config.vm.host_name = "saltubu"
#    salt_config.vm.provision :salt do |salt|
#        salt.minion_config = "srv/minion"
#        salt.run_highstate = true
#    end
#  end


  config.vm.define :chefserver do |chef_config|
    chef_config.vm.box = "chef-server"
    chef_config.vm.host_name = "chefserver"
    chef_config.vm.network :bridged
#    chef_config.vm.forward_port 80,8881
    end


  config.vm.define :Centos6 do |cent_config|
    cent_config.vm.box = "Centos6"
#    cent_config.vm.network :bridged
    cent_config.vm.forward_port 80, 8888
      cent_config.vm.provision :chef_client do |chef|
        chef.chef_server_url = "https://api.opscode.com/organizations/linbynd"
        chef.validation_key_path = "./.chef/linbynd-validator.pem"
        chef.validation_client_name = "linbynd-validator"
        chef.node_name = "cent_vagrantvm"
      end
  end
end
