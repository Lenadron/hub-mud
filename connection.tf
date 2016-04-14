# Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "adrons-universe"
  region      = "us-central1"
}