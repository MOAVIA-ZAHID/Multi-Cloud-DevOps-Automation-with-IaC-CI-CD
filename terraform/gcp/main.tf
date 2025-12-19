terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

resource "google_storage_bucket" "app_bucket" {
  name     = "${var.project_name}-bucket-${random_id.bucket_id.hex}"
  location = var.region
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
