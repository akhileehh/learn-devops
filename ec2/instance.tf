resource "aws_instance" "web" {
  ami                    = data.aws_ami.ami-ID.id
  instance_type          = "t2.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  availability_zone      = "us-east-1a"
  tags = {
    Name    = "dove-instance"
    project = "dove-project"
  }

}
resource "aws_ec2_instance_state" "web-state" {
    instance_id = aws_instance.web.id
    state       = "running"
  
}