##############################
# Private EC2 Security Group
##############################
resource "aws_security_group" "private_ec2_sg" {
  name        = "private_ec2_sg"
  description = "Security group for private EC2 instances"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow internal VPC traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [module.vpc.vpc_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

##############################
# 3 Ubuntu Application Instances
##############################
resource "aws_instance" "ubuntu_app" {
  count         = 3
  ami           = var.ubuntu_ami
  instance_type = "t2.micro"
  subnet_id     = module.vpc.private_subnets[0]   
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.private_ec2_sg.id]

  tags = {
    Name = "Ubuntu-App-${count.index + 1}"
    OS   = "ubuntu"
  }
}

##############################
# 3 Amazon Linux Application Instances
##############################
resource "aws_instance" "amazon_app" {
  count         = 3
  ami           = var.amazon_ami
  instance_type = "t2.micro"
  subnet_id     = module.vpc.private_subnets[0]
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.private_ec2_sg.id]

  tags = {
    Name = "Amazon-App-${count.index + 1}"
    OS   = "amazon"
  }
}

##############################
# 1 Ansible Controller Instance
##############################
resource "aws_instance" "ansible_controller" {
  ami           = var.ubuntu_ami    
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets[0]  
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  tags = {
    Name = "Ansible-Controller"
  }
}
