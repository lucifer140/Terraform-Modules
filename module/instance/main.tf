terraform{
required_version = ">= 1.1.9"
}



#publicsubnet
resource "aws_subnet" "public-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block

  tags = {
    Name = "Public-Subnet"
  }
}


resource "aws_instance" "public-instance" {
ami = var.ami
instance_type = var.instance_type
subnet_id = aws_subnet.public-subnet.id
tags = {
Name = "${var.instance_name}"
}
}
