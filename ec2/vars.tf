variable "region" {

  default = "us-east-1"

}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "ami_id" {
  default = {
    us-east-1 = "ami-084568db4383264d4"
    us-west-2 = "ami-04f167a56786e4b09"
  }

}