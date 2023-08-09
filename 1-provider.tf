provider "google" {
    project = "direct-shelter-336206"
    region = "us-central1"
    #credentials = file("credentials.json")
}
terraform {
  backend "gcs" {
    bucket = "aslim-backend"
    prefix = "terraform/state"
    
  }
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
}