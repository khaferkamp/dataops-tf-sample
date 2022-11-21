resource "digitalocean_project" "dataops_thesis" {
  name = data.digitalocean_project.dataops.name
}

data "digitalocean_project" "dataops" {
  name = var.project
}