provider "aws" {
	region="eu-west-2"
}

resource "aws_instance" "basic_centos_image" {
	ami="ami-09e5afc68eed60ef4"
	instance_type="t2.micro"
	vpc_security_group_ids=[aws_security_group.tcp_in_from_anywhere.id]

	tags={
		Name="basic_centos_test_server"
	}
}

resource "aws_security_group" "tcp_in_from_anywhere" {
	name="tcp_in_from_anywhere"

	ingress {
		from_port=8080
		to_port=8080
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
	}
}
