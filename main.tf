terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
  project     = "placeng"
  region      = "europe-west1"
}

resource "google_storage_bucket" "test-bucket" {
  name          = "placeng-test-bucket-eu"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}