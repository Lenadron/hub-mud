resource "google_container_cluster" "primary" {
    name = "marcus-aerielius"
    zone = "us-central1-a"
    initial_node_count = 3

    master_auth {
        username = "${username}"
        password = "${password}"
    }

    node_config {
        oauth_scopes = [
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring"
        ]
    }
}

