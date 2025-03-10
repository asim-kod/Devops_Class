resource "aws_instance" "instance_1" {

ami = var.ec2_ami_id
iam_instance_profile = var.ec2_role
instance_type = var.ec2_instance_type
key_name = var.ec2_instance_key
# subnet_id = var.public_subnet_id
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

# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#   security_group_id    = aws_security_group.sg_test.id
#   network_interface_id = aws_instance.instance_1.primary_network_interface_id
# }