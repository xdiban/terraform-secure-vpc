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

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone to deploy subnets into"
  type        = string
  default     = "eu-west-1a"
}

variable "ssh_public_key" {
  description = "Your local SSH public key contents (e.g. contents of ~/.ssh/id_ed25519.pub), uploaded to AWS as the EC2 key pair. Never put a private key here."
  type        = string
}

variable "admin_cidr" {
  description = "Your IP address in CIDR notation (e.g. 203.0.113.10/32) allowed to SSH into instances. Never set this to 0.0.0.0/0."
  type        = string

  validation {
    condition     = var.admin_cidr != "0.0.0.0/0"
    error_message = "admin_cidr must not be 0.0.0.0/0 — restrict SSH access to your own IP address."
  }
}
