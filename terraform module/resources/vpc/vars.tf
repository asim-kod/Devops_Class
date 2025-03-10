variable "cidr_block" {
  type        = string
   }

variable "vpc_tag" {
  type        = string
   }

variable "vpc_igw_tag" {
  type        = string
   }

variable "vpc_subnet_1_cidr" {
  type        = string
   }

variable "vpc_subnet_1_tag" {
  type        = string
  default = "public_subne"
   }

   variable "vpc_subnet_2_cidr" {
  type        = string
   }

variable "vpc_subnet_2_tag" {
  type        = string
  default = "privet_subnet"
   }