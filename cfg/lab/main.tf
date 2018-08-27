# Infrastructure

provider "aws" {
	region = "${var.aws_region}"
}

# VPC
resource "aws_vpc" "main" {
	cidr_block = "${var.vpc_cidr}"
	assign_generated_ipv6_cidr_block = true
	enable_dns_support = true
	enable_dns_hostnames = true
	tags {
		Name = "vpc${var.tag_name}"
	}
}

# Management subnet
resource "aws_subnet" "mgmt" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.mgmt_cidr}"
	tags {
		Name = "snetMgmt"
	}
}

# External subnet
resource "aws_subnet" "ext" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.ext_cidr}"
	tags {
		Name = "snetExternal"
	}
}

# Internal subnet
resource "aws_subnet" "int" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.int_cidr}"
	tags {
		Name = "snetInternal"
	}
}

# Internet gateway
resource "aws_internet_gateway" "gw" {
	vpc_id = "${aws_vpc.main.id}"
	tags {
		Name = "igw${var.tag_name}"
	}
}