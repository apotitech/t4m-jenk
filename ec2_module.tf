provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATTPPUJKKPEJVGCP7"
  secret_key = "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"
}

module "ec2_apotians" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  

  name = "apotians-instance"

  ami                    = "ami-098e42ae54c764c35"
  instance_type          = "t2.micro"
  key_name               = "abc123"
  monitoring             = false
  vpc_security_group_ids = ["sg-0a69fa7b9f7c32274"]
  subnet_id              = "subnet-06a165f5032498bef"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "Apotians"
  }
}
