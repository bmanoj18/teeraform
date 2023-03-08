variable "fourth-arena-379102" {}
variable "credentials.json" {}

variable "name" {
  type    = string
  default = "test-vm"
}
variable "region" {
  type    = string
  default = "us-central1"
}
  
variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "machine_type" {
  default = "f1-micro"
}
variable "image" {
  default = "centos-7-v20230203"
}
