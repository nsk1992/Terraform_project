resource "aws_vpc" "surya" {
    cidr_block = "10.0.0.0/16"
  
}
resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.surya.id
    cidr_block = "10.0.0.0/23"
    availability_zone = "us-east-1a"
  
}
resource "aws_subnet" "sub2" {
    vpc_id = aws_vpc.surya.id
    cidr_block = "10.0.2.0/23"
    availability_zone = "us-east-1b"
  
}
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.surya.id
  
}
resource "aws_instance" "myinstance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = "devops"
    subnet_id = aws_subnet.sub1.id
  
}
