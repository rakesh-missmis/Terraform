provider "aws" {
    region = "ap-northeast-1"
  }
resource "aws_key_pair" "aws-example" {
  key_name = "aws-example"
  public_key = file("~/.ssh/id_rsa.pub")
}
  resource "aws_instance" "rakesh" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.aws-example.key_name    
    tags = {
        key = "name"
        value = "rakesh"
    }
  }

/*resource "aws_s3_bucket" "remote-backend-project-1" {
    bucket = "remote-backend-project-1"
}*/