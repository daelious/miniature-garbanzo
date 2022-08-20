terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("<NAME>.json")

  project = "<PROJECT_ID>"
  region  = "us-east1"
  zone    = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "km-dev-network"
}