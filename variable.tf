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


variable "database_snapshot" {
  default = "arn:aws:rds:us-east-1:851725429413:snapshot:dev-database-snapshot-shopwise"
  description ="database_snapshot"
  type        = string
  }

  variable "database_instance_class" {
  default = "db.t3.micro"
  description ="database instance type"
  type        = string
  }

  variable "database_instance_identifier" {
  default = "dev-database-snapshot-shopwise"
  description ="database instance database_instance_identifier"
  type        = string
  }

   variable "multi_az_deployment" {
  default = false
  description ="create a standby db instance"
  type        = bool
  }

#ALB variables
   variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:851725429413:certificate/b2d1d49c-b236-43ad-af79-a3dd5d9485bc"
  description ="ssl certifiate arn"
  type        = string
  }

  #SNS variable
   variable "sns_email" {
  default = "a@live.fr"
  description ="email-adress"
  type        = string
  }

   #autoscaling group variables
   variable "launch_template_name" {
  default = "webserver-launch-template"
  description ="launch template name"
  type        = string
  }

   variable "EC2_image_id" {
  default = "ami-0c85bbaa62651e59b"
  description ="ami id"
  type        = string
  }

   variable "EC2_instance_type" {
  default = "t2.micro"
  description ="ec2 instance type"
  type        = string
  }

   variable "EC2_keypair" {
  default = "EC2 tuto"
  description ="name of the keypair"
  type        = string
  }

  
