data "digitalocean_project" "dataops-project" {
  name = "dataops-prototype"
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}