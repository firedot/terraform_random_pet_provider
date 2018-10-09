variable "access_key" {}

variable "secret_key" {}

variable "region" {
  default = "us-east-2"
}

variable "ami_id" {
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "random_pet" "server" {
}

resource "aws_instance" "server" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"

  tags {
    "Identity" = "test-web-srv"
    "Name"     = "name.${random_pet.server.id}"
  }
}
