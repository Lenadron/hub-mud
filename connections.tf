# Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "that-big-universe"
  region      = "us-central1"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "anaccesskey"
  secret_key = "asecretkey"
}