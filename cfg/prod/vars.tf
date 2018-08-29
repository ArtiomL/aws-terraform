# Input Variables

variable "aws_region" {
	description = "AWS region"
	default = "eu-central-1"
}

variable "tag_name" {
	description = "VPC Name tag"
	default = "F5Labs"
}

variable "vpc_cidr" {
	description = "VPC IPv4 CIDR block"
	default = "10.200.0.0/16"
}

variable "mgmt_cidr" {
	description = "Management subnet IPv4 CIDR block"
	default = "10.200.113.0/24"
}

variable "ext_cidr" {
	description = "External subnet IPv4 CIDR block"
	default = "10.200.115.0/24"
}

variable "int_cidr" {
	description = "Internal subnet IPv4 CIDR block"
	default = "10.200.112.0/24"
}

variable "key_path" {
	description = "SSH public key path"
	default = "/home/user/.ssh/id_rsa.pub"
}

variable "mgmt_asrc" {
	description = "Source IPv4 CIDR block(s) allowed to access management"
	default = ["0.0.0.0/0"]
}

variable "bigip_cft" {
	description = "BIG-IP CloudFormation template"
	default = "f5-existing-stack-byol-3nic-bigip.template"
}

variable "bigip_lic1" {
	description = "BIG-IP Registration Key"
	default = "ABCDE-FGHIJ-KLMNO-PQRST-UVWXYZA"
}
