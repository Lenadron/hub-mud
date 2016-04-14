# Create a new instance
resource "google_compute_instance" "hubmud" {
    name = "hubmud"
    machine_type = "f1-micro"
    
    tags = ["buildserver", "jenkins", "central", "terraformer"]
    zone = "us-central1-a"
    
    disk {
        image = "ubuntu-1404-trusty-v20160406"
    }

    network_interface {
        network = "default"
        access_config {
        
        }
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }

    tags = [ "http-server" ]
}