resource "aws_internet_gateway" "gw" {
  vpc_id =  "vpc-046cd13dbb75ecfbe"

  tags = {
    Name = "terraform-internet-gate-way"
  }
}