resource "digitalocean_project_resources" "dataops" {
  project = data.digitalocean_project.dataops.id
  resources = [
    digitalocean_kubernetes_cluster.dataops.urn
  ]
}
