resource "aws_instance" "website-server" {
  ami                    = "ami-0741dc526e1106ae5"
  instance_type          = "t3.micro"
  key_name               = "chave-site-prod"
  vpc_security_group_ids = [aws_security_group.website-sg.id]
  iam_instance_profile   = "ECR-EC2-Role"

  tags = {
    Name        = "website-server"
    Provisioned = "Terraform"
    Cliente     = "Rodrigo"
  }
}

# Security Group

resource "aws_security_group" "website-sg" {
  name   = "allow_tls"
  vpc_id = var.vpc_id

  tags = {
    Name        = "website-sg"
    Provisioned = "Terraform"
    Cliente     = "Rodrigo"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.website-sg.id
  cidr_ipv4         = "SEU_IP_AQUI/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.website-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.website-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outband" {
  security_group_id = aws_security_group.website-sg.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = -1
}
