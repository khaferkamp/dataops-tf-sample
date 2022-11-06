resource "digitalocean_project_resources" "project" {
  project = data.digitalocean_project.dataops-project.id
  resources = [
    digitalocean_kubernetes_cluster.dev.urn
  ]
}
