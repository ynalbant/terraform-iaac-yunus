#public subnets

resource "aws_subnet" "dev1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block1_public}"
  availability_zone = "${var.public_subnet1}"
}

resource "aws_subnet" "dev2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block2_public}"
  availability_zone = "${var.public_subnet2}"
}

resource "aws_subnet" "dev3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block3_public}"
  availability_zone = "${var.public_subnet3}"
}


#private subnets

resource "aws_subnet" "dev_private1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block1_private}"
}

resource "aws_subnet" "dev_private2" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block2_private}"
}

resource "aws_subnet" "dev_private3" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "${var.cidr_block3_private}"
}