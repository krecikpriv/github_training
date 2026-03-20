resource "digitalocean_droplet" "main" {
  name   = "przemek-mazurek-github-actions-droplet"
  region = "fra1"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-24-04-x64"
}
