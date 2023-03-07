# Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  tags         = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = "centos-7-v20230203"
      size  = "100"
      type  = "pd-ssd"      
    }
  }

  # Install Flask
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"
 
  network_interface {
    network = "default"

    access_config {
       network_tier = "PREMIUM"
      # Include this section to give the VM an external IP address
    }
  }
}
# [START vpc_flask_quickstart_5000_fw]
resource "google_compute_firewall" "http-server" {
  name    = "http-server-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http-server"]
}
