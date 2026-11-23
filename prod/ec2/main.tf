resource "aws_security_group" "ec2" {
  name        = "prod-trainee-project-ec2-sg"
  description = "Security group for prod EC2"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    description = "Allow ICMP"
    protocol    = "icmp"
    from_port   = 8
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "prod-trainee-project-ec2-sg"
  }
}

resource "aws_instance" "main" {
  ami           = "ami-amazonlinux2023"
  instance_type = "t2.micro"

  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_ids[0]

  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]

  associate_public_ip_address = true

  tags = {
    Name = "prod-trainee-project-ec2"
  }
}