resource "google_compute_instance" "tfer--instance-1" {
  boot_disk {
    auto_delete = "true"
    device_name = "instance-1"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/playground-s-11-451104ad/zones/us-central1-a/disks/instance-1"
  }

  can_ip_forward      = "false"
  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-micro"
  name                = "instance-1"

  network_interface {
    access_config {
      nat_ip       = "34.71.59.45"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/playground-s-11-451104ad/global/networks/default"
    network_ip         = "10.128.0.2"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/playground-s-11-451104ad/regions/us-central1/subnetworks/default"
    subnetwork_project = "playground-s-11-451104ad"
  }

  project = "playground-s-11-451104ad"

  scheduling {
    automatic_restart   = "true"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

  service_account {
    email  = "1031588193130-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  zone = "us-central1-a"
}
