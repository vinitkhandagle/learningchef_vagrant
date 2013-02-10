Vagrant::Config.run do |config|
  config.vm.define :lucid do |web_config|
    web_config.vm.box = "lucid32"
    config.vm.network :bridged
    config.vm.provision :shell, :path => "install.sh"
  end

  config.vm.define :cloud do |db_config|
    db_config.vm.box = "Ubuntu12.04cloud"
    db_config.vm.forward_port 3306, 3370
  end

  config.vm.define :Centos6 do |cent_config|
    cent_config.vm.box = "Centos6"
    config.vm.network :bridged
  end
end

