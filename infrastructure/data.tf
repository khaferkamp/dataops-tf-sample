data "digitalocean_ssh_key" "terraform" {
  name = var.ssh_key_name
}