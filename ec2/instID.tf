data "aws_ami" "ami-ID" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]

  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

output "intance_id" {
  description = " AMI ID of the latest Ubuntu Jammy 22.04 LTS"
  value       = data.aws_ami.ami-ID.id
}
