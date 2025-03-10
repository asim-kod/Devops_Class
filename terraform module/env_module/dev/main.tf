module "dev_ec2" {
  source = "../../resources/ec2"
  ec2_ami_id = "ami-05b10e08d247fb927"
  ec2_role = "all"
  ec2_instance_type = "t2.micro"
 ec2_instance_key = "nv_delete"
#  public_subnet_id = "module.dev_vpc.aws_subnet.subnet_1.id"
#  depends_on = [module.dev_vpc.aws_subnet]
 }

module "dev_vpc" {
  source = "../../resources/vpc"
  cidr_block = "14.1.0.0/18"
  vpc_tag  = "testing_vpc"
  vpc_igw_tag = "vpc_igw"
  vpc_subnet_1_cidr = "14.1.0.0/22"
  vpc_subnet_1_tag = "public_subnet_1"
  vpc_subnet_2_cidr = "14.1.4.0/22"
  vpc_subnet_2_tag = "private_subnet_1"
}