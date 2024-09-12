terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.52.0"
    }
  }
}

provider "google" {
  project = "ringed-inn-430209-i8"
  region  = "us-central1"
  zone    = "us-central1-c"
}