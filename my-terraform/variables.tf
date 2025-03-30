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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrbu4LzrqncYmM7jW9WxquNSl5nQ3kOKHC/Lb4oasTPuyOhji/SdbwTjBHGIL9o7wLOBZ8JITrZHc7znHbSbsTKYqkjY1Zkt1C3LHR1gAvO3pzoh8TIMiIeAUNShujAWjWtJM9HGbcgyZkEwcwZCq9rPsxIBif80saGd4L//1QcxfSNyJTVplNl+BaMCPGMsimHEpKXadR3BPVRszAQAfv5rkYkajzzOQ94ZKtX7TMnVJtg0Hrts8w2QnjvKN0oQPTwGq2K1AwEYkAqpLEEa3cSgLIkXSpOL9sq1xUOBFaBWitghH9fl9AAu+zv8NceXdvvFsxCRgUzbuwQ5OL/CR1 hyunohkwon@HYUNs-MacBook-Pro.local"
}

variable "resource_tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "my-terraform"
  }
}

variable "key_name" {
  description = "AWS Key Pair name (if needed for instances)"
  default     = "bastion-key"
}

variable "my_ip" {
  description = "My public IP in CIDR format (e.g., 69.84.2.1/32)"
  default     = "69.84.2.1/32"
}

variable "ubuntu_ami" {
  description = "AMI ID for Ubuntu instances"
  default     = "ami-0f588a6faa4a85d25"
}

variable "amazon_ami" {
  description = "AMI ID for Amazon Linux instances"
  default     = "ami-0ce78b6bd252344f9"
}