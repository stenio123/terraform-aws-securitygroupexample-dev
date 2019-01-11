# Configure the AWS Provider
provider "aws" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.55.0"
}


data "terraform_remote_state" "vpc" {
  backend = "atlas"
  config {
    name = "${var.tfe_org}/${var.vpc_workspace}"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id  = "${data.terraform_remote_state.vpc.vpc_id}"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = "${var.tags}"
}
