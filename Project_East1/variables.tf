variable "ami" {

    description = "The AMI to use for the EC2 instance"
    //default = "ami-08f7912c15ca96832"
}

variable "instance_type" {
    description = "The type of EC2 instance to launch"
    //default = "t2.micro"

}
variable "my-ip" {
    description = "The IP address to allow SSH and HTTP access"
    //default = "156.221.14.70/32"
}


variable "region" {
    
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
