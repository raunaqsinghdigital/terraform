resource "google_compute_disk" "tfer--us-central1-a-002F-instance-1" {
  image                     = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20220406"
  name                      = "instance-1"
  physical_block_size_bytes = "4096"
  project                   = "playground-s-11-451104ad"
  size                      = "10"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}
