

output "lke_instance" {
  value = linode_lke_cluster.ckad-prep-cluster.id
}


resource "linode_lke_cluster" "ckad-prep-cluster" {
  label       = "ckad-prep"
  k8s_version = "1.18"
  region      = "ap-south"
  tags        = ["dev"]

  pool {
    type  = "g6-standard-1"
    count = 1
  }
}

