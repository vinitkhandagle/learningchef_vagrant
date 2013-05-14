### VM for CHEF 1 ####
Vagrant.configure ("1") do |config|
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
end 

### Arch VM independent of Any CM tool

Vagrant.configure ("1") do |config|
  config.vm.define :Arch do |arch_config|
    arch_config.vm.box = "Arch64"
  end
end
#### Ansible VM ####
Vagrant.configure ("1") do |config|
    config.vm.define :ansiubu do |ansi_config|
    ansi_config.vm.box = "lucid32"
    ansi_config.vm.provision :ansible do |ansible|
        ansible.playbook = "setup-ansiubu.yml"
        ansible.hosts = "ansiubu"
    end
  end
end
### Salt CM VM ####
Vagrant.configure ("2") do |config|
    config.vm.define :saltubu do |salt_config|
    salt_config.vm.box = "lucid32"
    salt_config.vm.synced_folder "srv/", "/srv"
    salt_config.vm.provision :salt do |salt|
        salt.minion_config = "srv/minion"
        salt.verbose = true
        salt.run_highstate = true
    end
  end
end
