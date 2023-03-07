provider "google" {
credentials = "${file("credentials.json")}"
project = "fourth-arena-379102"
region  = "us-central1"
}
