variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "aws_azs" {
  description = "List of availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "aws_public_subnet_cidr" {
  description = "Public subnet CIDRs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "aws_private_subnet_cidr" {
  description = "Private subnet CIDRs"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "bastion_prefix" {
  description = "Bastion host name prefix"
  default     = "bastion"
}

variable "public_key" {
  description = "Public SSH key for bastion access"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcJPhQC0HmalmAZfOrWrx9aj1NiPXks25cyrEckq4nyv9bOFcEy7H1TayPKmFYWDfOpmos/9X2vNPFaHvpOv8PQAXc0jlHy3Bmwr5ueeZ9ls53uBM46vCQXUemm6KBnXyinb3xXNNqjbrC31XlleWeM0p/vKtDKrrd0f890WmGyzfQsbWI7MWhrtC+NcAG8ETuivaMm8wvBLUhD/hKOs1A4aReXd/1/BeyoZIxBHLd0oj2TIvlhOAcqVJL+UJoshHFXVwxToA5MKnkBwGcMkQoAvXMzwT0I4h0+xPvNdOtJPY48mScccGrARiLlelASulitli1ec4NJu/77i6bM4OH hyunohkwon@HYUNs-MacBook-Pro.local"
}

variable "resource_tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "my-terraform"
  }
}

variable "custom_ami" {
  description = "Custom AMI ID generated with Packer"
  default     = "ami-008beb8cc6424ec90"
}

variable "key_name" {
  description = "AWS Key Pair name (if needed for instances)"
  default     = "bastion-key"
}

variable "my_ip" {
  description = "My public IP in CIDR format (e.g., 69.84.2.1/32)"
  default     = "69.84.2.1/32"
}