resource "google_compute_instance" "vm_instance" {
  name         = "web-server"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {} # Enables external IP
  }
}
