resource "digitalocean_kubernetes_cluster" "dataops" {
  name   = "${var.name}-${var.env}"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = var.version

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 1
  }
}