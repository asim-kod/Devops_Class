resource "aws_instance" "instance_1" {

ami = "ami-05b10e08d247fb927"
iam_instance_profile = "demo-IAM-role"
instance_type = "t2.micro"
key_name = "nv_delete"
subnet_id = aws_subnet.subnet_1.id
tags = {
      Environment = "Test"
      Name        = "fastrack"
    }
# count = 1
  user_data = <<EOF
   #!/bin/bash
  sudo yum update 
  sudo yum install httpd -y
  systemctl start httpd
  systemctl enable httpd
  mkdir /var/www/html/training
  echo "welcome to Job & placement-oriented-training page: "  >> /var/www/html/training/index.html
  hostname >> /var/www/html/training/index.html
  EOF
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.sg_test.id
  network_interface_id = aws_instance.instance_1.primary_network_interface_id
}