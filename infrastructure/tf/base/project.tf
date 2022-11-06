resource "digitalocean_project" "dataops-thesis-project" {
  name        = data.digitalocean_project.dataops-project.name
}

data "digitalocean_project" "dataops-project" {
  name = var.project
}