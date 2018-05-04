variable "do_token" {}

provider "digitalocean" {
  token = "${var.do_token}"
  version = "~> 0.1"
}

resource "digitalocean_droplet" "web" {
  name = "somehost"
  image = "centos-7-x64"
  region = "sfo2"
  size = "512mb"
}
