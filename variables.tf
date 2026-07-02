variable "aws_region" {
  description = "AWS region where the infrastructure is deployed"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Project name, used as a prefix for resource tags"
  type        = string
  default     = "secure-vpc-demo"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
