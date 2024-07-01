#vpc variables
variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
  type        = string
  }

variable "public_subnet_az1_cidr_block" {
  description = "public subnet az1 cidr block"
  default     = "10.0.0.0/24"
  type        = string
  }

  variable "public_subnet_az2_cidr_block" {
  description = "public subnet az2 cidr block"
  default     = "10.0.1.0/24"
  type        = string
  }


 variable "private_app_subnet_az1_cidr_block" {
  description = "private app subnet az1 cidr block"
  default     = "10.0.2.0/24"
  type        = string
  }

  variable "private_app_subnet_az2_cidr_block" {
  description = "private app subnet az2 cidr block"
  default     = "10.0.3.0/24"
  type        = string
  }


   variable "private_data_subnet_az1_cidr_block" {
  description = "private data subnet az1 cidr block"
  default     = "10.0.4.0/24"
  type        = string
  }

  variable "private_data_subnet_az2_cidr_block" {
  description = "private data subnet az2 cidr block"
  default     = "10.0.5.0/24"
  type        = string
  }

#security group variables
variable "ssh_location" {
  default = "0.0.0.0/0" #should limited to my ip adresse
  description ="ip adresse that can ssh into the ec2"
  type        = string
  }
