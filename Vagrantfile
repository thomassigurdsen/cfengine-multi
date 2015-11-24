Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.box = "debian8"

  config.vm.define "cfhost" do |cfhost|
    cfhost.vm.hostname = "cfhost"
    cfhost.vm.network "private_network", ip: "10.190.0.2"
    cfhost.vm.synced_folder "cfhost/", "/cf/"
    cfhost.vm.provision "shell", path: "cfhost/cfsetup.sh"
#    cfhost.vm.provision "cfengine" do |cf|
#      cf.am_policy_hub = true
#      cf.files_path = "cfhost"
#    end
  end

  config.vm.define "web" do |web|
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "10.190.0.3"
#    web.vm.provision "cfengine" do |cf|
#      cf.policy_server_address = "10.190.0.2"
#    end
  end

  config.vm.define "fbx" do |fbx|
    fbx.vm.hostname = "fbx"
    fbx.vm.box = "debian-sid"
    fbx.vm.network "private_network", ip: "10.190.0.4"
#    fbx.vm.provision "cfengine" do |cf|
#      cf.policy_server_address = "10.190.0.2"
#    end
  end

  config.vm.provision "shell", path: "post-bootstrap.sh"

end
