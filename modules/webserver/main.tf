resource "aws_instance" "webserver" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.webserver.id]
    subnet_id = aws_subnet.subnet.id
    tags = {
    Name = "${join("-", ["webserver", var.region])}"
}

}

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    tags = {
    Name = "${join("-", ["vpc", var.region])}"
}

}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr
    availability_zone = var.availability_zone
    tags = {
    Name = "${join("-", ["subnet", var.region])}"
}

}

resource "aws_security_group" "webserver" {
    vpc_id = aws_vpc.myvpc.id
    ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.my-ip]
    }  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.myvpc.id

}

resource "aws_route_table" "subent_route" {
    vpc_id = aws_vpc.myvpc.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
    }

}

resource "aws_route_table_association" "subnet-route-assoc" {

    subnet_id = aws_subnet.subnet.id
    route_table_id = aws_route_table.subent_route.id

}


#configure vpc-endpoint to access dynamodb
resource "aws_vpc_endpoint" "dynamodb" {
vpc_id = aws_vpc.myvpc.id
service_name = "com.amazonaws.${var.region}.dynamodb"
tags = {
    Name = "${join("-", ["dynamodb", var.region])}"
}
}

# add vpc-endpoint to be acceses through

resource "aws_vpc_endpoint" "s3-endpoint"{
    vpc_id= aws_vpc.myvpc.id
    service_name= "com.amazonaws.${var.region}.s3"
    tags = {
    Name= "${join("-", ["s3-endpoint", var.region])}"
    }
}
