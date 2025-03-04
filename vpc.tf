# resource "aws_vpc" "main" {
#   cidr_block = "20.10.0.0/21"
# tags = {
#       Environment = "Test"
#       Name        = "Vpc_testing"
#     }
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "Vpc_igw_testing"
#   }
# }

# # resource "aws_internet_gateway_attachment" "igw_attach_vpc" {
# #   internet_gateway_id = aws_internet_gateway.igw.id
# #   vpc_id              = aws_vpc.main.id
# # }

# resource "aws_route_table_association" "attach_igw_to_router" {
#   gateway_id     = aws_internet_gateway.igw.id
#   route_table_id = aws_vpc.main.default_route_table_id
# }

# resource "aws_subnet" "subnet_1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "20.10.0.0/22"

#   tags = {
#     Name = "public_subnet"
#   }
# }

# resource "aws_subnet" "subnet_2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "20.10.4.0/22"

#   tags = {
#     Name = "private_subnet"
#   }
# }

# resource "aws_route_table_association" "associate_subnet_1" {
#   subnet_id      = aws_subnet.subnet_1.id
#   route_table_id = aws_vpc.main.default_route_table_id
# }

