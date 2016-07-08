resource "digitalocean_droplet" "gavi" {
    image = "ubuntu-14-04-x64"
    name = "gavi"
    region = "nyc2"
    size = "512mb"
}
