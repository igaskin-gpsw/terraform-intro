
variable "environment" {
  default = "dev"
}

variable "cidrs" {
  default = {
    "dev" = "10.0.0.0/16"
    "prod" = "10.1.0.0/16"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "${lookup(var.cidrs, var.environment)}"
  instance_tenancy = "dedicated"

  tags {
    Name = "${var.environment}"
  }
}


resource "aws_subnet" "main" {
  count = 4
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${cidrsubnet(aws_vpc.main.cidr_block, 8, count.index) }"
  tags {
    Name = "${var.environment}"
  }
}
