resource "aws_instance" "web" {
  ami                    = var.ami_id[var.region]
  instance_type          = "t2.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  availability_zone      = var.availability_zone
  tags = {
    Name    = "dove-instance"
    project = "dove-project"
  }

}
resource "aws_ec2_instance_state" "web-state" {
  instance_id = aws_instance.web.id
  state       = "running"

}