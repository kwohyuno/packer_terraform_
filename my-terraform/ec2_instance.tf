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

resource "aws_instance" "private_ec2" {
  count         = 6
  ami           = var.custom_ami
  instance_type = "t2.micro"
  subnet_id     = module.vpc.private_subnets[0] 
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.private_ec2_sg.id]

  tags = {
    Name = "Private EC2 ${count.index + 1}"
  }
}
