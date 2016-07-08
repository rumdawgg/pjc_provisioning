resource "digitalocean_droplet" "gavi" {
    image = "ubuntu-14-04-x64"
    name = "gavi"
    region = "nyc2"
    size = "1gb"
    ssh_keys = ["17:27:51:3d:95:6f:7f:ce:8c:96:be:81:02:7f:3a:0f"]

    connection {
      user = "root"
      private_key = "${file("../../../private/ssh_key.pem")}"
    }

    provisioner "chef" {
      environment = "wedding-stage"
      run_list = ["pjc-base::default"]
      node_name = "gavi"

      server_url = "${var.chef_url}"
      validation_client_name = "${var.chef_client_name}"
      validation_key = "${file("../../../private/chef_key.pem")}"
      version = "12.9.41"
    }
}
