resource "google_storage_bucket" "deployestorage" {
    name = "deploy-storage"
    location = "US"
}