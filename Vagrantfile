Vagrant.configure(2) do |config|
  config.vm.define "manager" do |manager|
    manager.vm.box = "ubuntu/trusty64"
    manager.vm.network "private_network", ip: "192.168.0.248"
    manager.vm.provider "virtualbox" do |managerv|
      managerv.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    manager.vm.hostname = "manager.puneet.com"
    manager.vm.provision "shell", path: "docker_install.sh"
  end
  config.vm.define "agent1" do |agent1|
    agent1.vm.box = "ubuntu/trusty64"
    agent1.vm.network "private_network", ip: "192.168.0.247"
    agent1.vm.hostname = "agent1.puneet.com"
    agent1.vm.provision "shell", path: "docker_install.sh"
  end
  config.vm.define "agent2" do |agent2|
    agent2.vm.box = "ubuntu/trusty64"
    agent2.vm.network "private_network", ip: "192.168.0.246"
    agent2.vm.hostname = "agent2.puneet.com"
    agent2.vm.provision "shell", path: "docker_install.sh"
  end
end
