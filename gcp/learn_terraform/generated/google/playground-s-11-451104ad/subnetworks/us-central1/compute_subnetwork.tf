resource "google_compute_subnetwork" "tfer--default" {
  ip_cidr_range            = "10.128.0.0/20"
  name                     = "default"
  network                  = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  private_ip_google_access = "false"
  project                  = "playground-s-11-451104ad"
  region                   = "us-central1"
}
