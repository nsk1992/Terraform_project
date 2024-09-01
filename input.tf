variable "instance_type" {
    description = "The type of ec2 instance"
    type = string
    default = "t2.micro"

}
variable "ami_id" {
    description = "The AMI ID to use for this instance"
    type = string
    default = "ami-0e86e20dae9224db8"
}
