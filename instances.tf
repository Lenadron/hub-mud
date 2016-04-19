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
        source = "scripts/run-remote.sh"
        destination = "run-remote.sh"
        connection {
            type = "ssh"
            user = "adron"
            private_key = "${file("~/.ssh/google_compute_engine")}"
        }
    }

    provisioner "remote-exec" {
        inline = [
          "chmod +x run-remote.sh",
          "./run-remote.sh"
        ]
        connection {
            type = "ssh"
            user = "adron"
            private_key = "${file("~/.ssh/google_compute_engine")}"
        }
    }

    provisioner "local-exec" {
        command = "./scripts/setup-bashrc.sh"
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
}