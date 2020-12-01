
//provider "linode" {
//  token = "$LINODE_TOKEN"
//}

output "ckad_volume_id" {
  value = linode_volume.ckad-volume.id
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

resource "linode_volume" "ckad-volume" {
  region    = linode_lke_cluster.ckad-prep-cluster.region
  label     = "ckad-volume"
  linode_id = linode_lke_cluster.ckad-prep-cluster.id
  size      = 10
}
