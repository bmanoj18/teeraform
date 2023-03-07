provider "google" {
credentials = file("credentials.json")
project = "My First Project"
region  = "us-central1"
}
