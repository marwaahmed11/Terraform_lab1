resource "aws_route_table" "example" {
  vpc_id =  "vpc-046cd13dbb75ecfbe"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-04bae0722aefe50f0"
  }



  tags = {
    Name = "terraform-routingtable"
  }
}

resource "aws_route_table_association" "subnet1-route" {
  subnet_id = "subnet-0507e5c4f2b6e0634"
  route_table_id = "rtb-03f76281bdc3abf43"
}