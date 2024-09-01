provider "aws" {
  region = "us-est-1a"
}
module "ec2_instance" {
    source = "https://github.com/nsk1992/Terraform_project.git"
    instance_type = "t2.micro"
    ami_id = "ami-0e86e20dae9224db8"
  
}
