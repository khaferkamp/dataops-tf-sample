terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}

resource "digitalocean_project_resources" "project" {
  project = data.digitalocean_project.dataops-project.id
  resources = [
    digitalocean_kubernetes_cluster.dev.urn
  ]
}

resource "digitalocean_kubernetes_cluster" "dev" {
  name   = "dok-cluster-dev"
  region = "fra1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.24.4-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 1

    #taint {
    #  key    = "workloadKind"
    #  value  = "database"
    #  effect = "NoSchedule"
    #}
  }
}