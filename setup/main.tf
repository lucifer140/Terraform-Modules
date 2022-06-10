

#vpc
resource "aws_vpc" "public-vpc" {
cidr_block = "10.0.0.0/16"
}


module "instmodule" {
source = "../module/instance/"
vpc_id = aws_vpc.public-vpc.id
cidr_block = "10.0.0.0/16"
instance_name = "public-instance"
ami = "ami-079b5e5b3971bd10d"
instance_type = "t3.micro"
}


