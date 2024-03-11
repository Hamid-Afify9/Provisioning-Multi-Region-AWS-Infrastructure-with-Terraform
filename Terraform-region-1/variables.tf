variable "ami" {

    description = "The AMI to use for the EC2 instance"
    default = "ami-08f7912c15ca96832"
}

variable "instance_type" {
    description = "The type of EC2 instance to launch"
    default = "t2.micro"

}
variable "my-ip" {
    description = "The IP address to allow SSH and HTTP access"
    default = "19.150.220.30"
}

variable "vpc_id" {
    description = "The ID of the VPC"
    default = "vpc-0a5d9c15c6f3a4b9b"

}
variable "region" {
    description = "The region in which the resources will be created"
    default = "us-east-1"
}
variable "availability_zone" {
    description = "The availability zone in which the EC2 instance will be created"
    default = "us-east-1a"

}
variable "user_data" {
    description = "The path to the file containing the user data"
    default = "user_data.sh"
}

variable "vpc_cidr" {
    description = "The ID of the VPC"
    default = "10.0.0.0/16"
}
variable "subnet_cidr" {
    description = "The CIDR block for the subnet"
    default="10.0.0.0/24"
}

variable "ec2_sg_id" {
  
}
