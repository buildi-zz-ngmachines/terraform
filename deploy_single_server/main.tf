provider "aws" {
	region="eu-west-2"
}

resource "aws_instance" "basic_centos_image" {
	ami="ami-09e5afc68eed60ef4"
	instance_type="t2.micro"
}

