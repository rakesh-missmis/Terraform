terraform {
  backend "s3" {
    bucket = "remote-backend-project-1"
    key = "remote-backend-project-1/terraform.tfstate"
    region = "ap-northeast-1"
  }
}