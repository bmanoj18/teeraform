provider "google" {
credentials = "${file("creditinals.json")}"
project = My First Project
}
