resource "google_compute_route" "tfer--default-route-01fd1ebc5b0da9fa" {
  description = "Default local route to the subnetwork 10.180.0.0/20."
  dest_range  = "10.180.0.0/20"
  name        = "default-route-01fd1ebc5b0da9fa"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-0f306adb707c98a9" {
  description = "Default local route to the subnetwork 10.128.0.0/20."
  dest_range  = "10.128.0.0/20"
  name        = "default-route-0f306adb707c98a9"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-180ad5a0176a2aa3" {
  description = "Default local route to the subnetwork 10.132.0.0/20."
  dest_range  = "10.132.0.0/20"
  name        = "default-route-180ad5a0176a2aa3"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-1d3a15ea890272af" {
  description = "Default local route to the subnetwork 10.182.0.0/20."
  dest_range  = "10.182.0.0/20"
  name        = "default-route-1d3a15ea890272af"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-4af787bfd0c96127" {
  description = "Default local route to the subnetwork 10.152.0.0/20."
  dest_range  = "10.152.0.0/20"
  name        = "default-route-4af787bfd0c96127"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-672454dc617143ba" {
  description = "Default local route to the subnetwork 10.138.0.0/20."
  dest_range  = "10.138.0.0/20"
  name        = "default-route-672454dc617143ba"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-83e7a7de49cba511" {
  description = "Default local route to the subnetwork 10.168.0.0/20."
  dest_range  = "10.168.0.0/20"
  name        = "default-route-83e7a7de49cba511"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-b53ef19f7bce1173" {
  description      = "Default route to the Internet."
  dest_range       = "0.0.0.0/0"
  name             = "default-route-b53ef19f7bce1173"
  network          = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  next_hop_gateway = "https://www.googleapis.com/compute/v1/projects/playground-s-11-451104ad/global/gateways/default-internet-gateway"
  priority         = "1000"
  project          = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-bd6e09057fd3beef" {
  description = "Default local route to the subnetwork 10.142.0.0/20."
  dest_range  = "10.142.0.0/20"
  name        = "default-route-bd6e09057fd3beef"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}

resource "google_compute_route" "tfer--default-route-d6281d61022204d1" {
  description = "Default local route to the subnetwork 10.150.0.0/20."
  dest_range  = "10.150.0.0/20"
  name        = "default-route-d6281d61022204d1"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "playground-s-11-451104ad"
}
