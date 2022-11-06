resource "digitalocean_project_resources" "project" {
  project = data.digitalocean_project.dataops.id
  resources = [
    digitalocean_domain.default.urn,
    digitalocean_kubernetes_cluster.base.urn
  ]
}