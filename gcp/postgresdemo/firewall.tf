resource "google_compute_firewall" "firewall-postgre" {
  name    = "postgre-network-firewall"
  network = google_compute_network.vpc_network.name
depends_on = [
  google_compute_network.vpc_network
]
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","5432"]
  }

  source_ranges = ["0.0.0.0/0"]
}
