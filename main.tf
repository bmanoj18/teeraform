# Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  tags         = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = "${var.image}"
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
