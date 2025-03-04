variable "ec2_ami_id" {
  type        = string
  default = "ami-05b10e08d247fb927"
}

variable "ec2_role"{
  type        = string
  default = "demo-IAM-role"
}

variable "ec2_instance_type" {
  type        = string
  default = "t2.micro"
}

variable "ec2_instance_key"{
  type        = string
  default = "nv_delete"
  }























#################  examples of variablex  #######

# variable "user1" {
#   type        = string
#   default = "user1"
# }

# variable "user2"{
#   type        = string
#   default = "asim"
# }

# variable "usernu"{
#   type        = number
#   default = "1001"
# }


# variable "userlist" {
#   type        = list
#   default = ["user1", "user2","user3"]
#   #            0       1        2
# }

# variable "usermap" {
#   type        = map(string)
#   default = {
#     user1 = "apponix",
#     user2 = "academy",
#     user3 = "java"
#   }
# }

# variable "userall"{
#   type        = any
#   default = {
#     user1 = "apponix",
#     user2 = ["user1", "user2","user3"],
#     user3 = "12345"
#     user4 = {
#       user41 = "asim",
#       user42 = "asia",
#       user43 = "pacific"
#     }
#   }
# }