Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.box = "debian8"

  config.vm.define "cfhost" do |cfhost|
    cfhost.vm.hostname = "cfhost"
    cfhost.vm.network "private_network", ip: "10.190.0.2"
    cfhost.vm.synced_folder "cfhost/", "/cf/"
    cfhost.vm.provision "shell", path: "cfhost/cfsetup.sh"
  end

  config.vm.define "web" do |web|
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "10.190.0.3"
  end

  config.vm.define "fbx" do |fbx|
    fbx.vm.hostname = "fbx"
    fbx.vm.network "private_network", ip: "10.190.0.4"
  end

  config.vm.provision "shell", path: "post-bootstrap.sh"

end
