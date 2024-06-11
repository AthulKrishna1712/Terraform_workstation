variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "variables_sub_cidr" {
  description = "Cidr block for variable subnet"
  type        = string
  default     = "10.0.202.0/24"
}

variable "variables_sub_az" {
  description = "AZ for variable subnet"
  type        = string
  default     = "ap-south-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set automatic ip assignment for variable subnet"
  type        = bool
  default     = true
}

# variable "ap-south-1-azs" {
#     type = list(string)
#     default = [
#         "ap-south-1a",
#         "ap-south-1b",
#         "ap-south-1c",
#     ]
# }

# variable "ap-south-1-azs" {
#   type = map(string)
#   default = {
#     "prod" = "10.0.202.0/24"
#     "dev"  = "10.0.201.0/24"
#   }
# }

variable "ip" {
  type = map(any)
  default = {
    prod = {
      ip = "10.0.202.0/24"
      az = "ap-south-1a"
    }

    dev = {
      ip = "10.0.201.0/24"
      az = "ap-south-1b"
    }
  }
}