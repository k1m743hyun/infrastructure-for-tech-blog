variable "availability_zone" {}

variable "ami" {
  description = "The Amazon Machine Image"
  type        = string
}

variable "instance_type" {
  description = "The EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {}

variable "vpc_security_group_ids" {}

variable "key_name" {}

variable "tags" {}