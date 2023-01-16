resource "aws_vpc" "iti-vpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "iti-vpc"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block       = "10.0.0.0/24"
  vpc_id = "vpc-046cd13dbb75ecfbe"
}