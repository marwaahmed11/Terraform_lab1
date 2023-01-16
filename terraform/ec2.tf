resource "aws_instance" "ec2_instance" {
    tags = {
        Name = "terraform-ec2-instance"
    }
    ami = "ami-0b5eea76982371e91"
    subnet_id = "subnet-0507e5c4f2b6e0634"
    instance_type = "t2.micro"
    associate_public_ip_address = "true" #enable ip 
    security_groups = ["sg-0ebfd251ac2f72cdf"]
  
    user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    EOF

}


