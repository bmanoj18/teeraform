provider "google" {
credentials = "credentials.json"
project = "${var.project}"
region  = "${var.region}"
}
