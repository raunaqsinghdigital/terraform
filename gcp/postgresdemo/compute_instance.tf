resource "google_compute_instance" "instance-1" {

  machine_type        = "e2-micro"
  name                = "postgres-db-instance"
  depends_on          = [module.vpc]
  can_ip_forward      = "false"
  deletion_protection = "false"
  enable_display      = "false"
  project             = var.project
  zone                = var.zone #"us-central1-a"


  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = google_compute_network.vpc_network.id
    subnetwork         = "subnet-postgre-demo"
    subnetwork_project = var.project
  }

  scheduling {
    automatic_restart   = "true"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

 metadata_startup_script = file("/home/rauni2000/terraform/gcp/postgresdemo/postgres_install.sh")

  /** service_account {
    email  = "1031588193130-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }**/

  /**shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }**/


}
