resource "aws_security_group" "allow_all_traffic" {
  name        = "allow-all-traffic"
  description = "Allow all incoming and outgoing traffic"

  vpc_id = module.vpc.vpc_id # Replace with your VPC ID

  # Allow all inbound traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 represents all protocols
    cidr_blocks = ["0.0.0.0/0"]  # Allow from all IP addresses (you can restrict this to specific IPs if needed)
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 represents all protocols
    cidr_blocks = ["0.0.0.0/0"]  # Allow to all IP addresses (you can restrict this to specific IPs if needed)
  }
  tags = {
    Name = "sg-lambda"
    Owner = "Awab"
  }
}