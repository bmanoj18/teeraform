provider "google" {
credentials = "${file("var.credentials.json")}"
project = "${var.project}"
region  = "${var.region}"
}
