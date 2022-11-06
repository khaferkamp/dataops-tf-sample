resource "digitalocean_project" "dataops_thesis" {
  name = data.digitalocean_project.dataops_project.name
}

data "digitalocean_project" "dataops_project" {
  name = var.project
}