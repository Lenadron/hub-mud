# Create a new instance
resource "google_compute_instance" "hubmud" {
    name = "hubmud"
    machine_type = "f1-micro"
    
    tags = ["buildserver", "jenkins", "central", "terraformer"]
    tags = [ "http-server" ]
    
    zone = "us-central1-b"
    
    disk {
        image = "ubuntu-1404-trusty-v20160406"
    }

    network_interface {
        network = "default"
        access_config {}
    }

    provisioner "file" {
        source = "installations.sh"
        destination = "installations.sh"
        connection {
            type = "ssh"
            user = "ubuntu"
            private_key = "${file("~/.ssh/google_compute_engine")}"
        }
    }

    provisioner "remote-exec" {
        inline = [
          "chmod +x ~/installations.sh",
          "cd ~",
          "./installations.sh"
        ]
        connection {
            type = "ssh"
            user = "ubuntu"
            private_key = "${file("~/.ssh/google_compute_engine")}"
        }

    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
}