provider "google" {
credentials = "${var.credentials.json}"
project = "${var.project}"
region  = "${var.region}"
}
