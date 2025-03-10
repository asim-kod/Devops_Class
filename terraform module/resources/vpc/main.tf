resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
tags = {
      Environment = var.vpc_tag
      Name        = "Vpc_testing"
    }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.vpc_igw_tag
  }
}

# resource "aws_internet_gateway_attachment" "igw_attach_vpc" {
#   internet_gateway_id = aws_internet_gateway.igw.id
#   vpc_id              = aws_vpc.main.id
# }

resource "aws_route_table_association" "attach_igw_to_router" {
  gateway_id     = aws_internet_gateway.igw.id
  route_table_id = aws_vpc.main.default_route_table_id
}

resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_subnet_1_cidr

  tags = {
    Name = var.vpc_subnet_1_tag
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_subnet_2_cidr

  tags = {
    Name = var.vpc_subnet_2_tag
  }
}

resource "aws_route_table_association" "associate_subnet_1" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_vpc.main.default_route_table_id
}