provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAEXAMPLE123"
  secret_key = "abc123secret"
}

resource "aws_security_group" "web" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "data" {
  bucket = "my-company-data"
  acl    = "public-read"
}
