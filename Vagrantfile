Vagrant::Config.run do |config|
  config.vm.define :lucid do |web_config|
    web_config.vm.box = "lucid32"
      config.vm.provision :chef_client do |chef|
        chef.chef_server_url = "https://api.opscode.com/organizations/linbynd"
        chef.validation_key_path = "./.chef/linbynd-validator.pem"
        chef.validation_client_name = "linbynd-validator"
        chef.node_name = "vinit_vagrantvm"
      end
   end

  config.vm.define :cloud do |db_config|
    db_config.vm.box = "Ubuntu12.04cloud"
  end

  config.vm.define :Centos6 do |cent_config|
    cent_config.vm.box = "Centos6"
  end
end
