Vagrant.configure(2) do |config|
    config.vm.box = "centos/7"
    # config.vm.provision "shell", path: "provision.sh"
    config.vm.provision "shell", path: "account.sh", args: "vault"
    config.vm.provision "shell", path: "prereqs.sh"
    config.vm.provision "shell", path: "vaultsystemd.sh"
    config.vm.provision "shell", path: "vaultdownload.sh", args: "1.4.1"
    config.vm.provision "shell", path: "configurevault.sh" 
    config.vm.provision "shell", inline: "sudo systemctl enable vault.service"
    config.vm.provision "shell", inline: "sudo systemctl start vault"
    config.vm.network "forwarded_port", guest: 8200, host: 8080
  end
