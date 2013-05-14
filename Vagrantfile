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
