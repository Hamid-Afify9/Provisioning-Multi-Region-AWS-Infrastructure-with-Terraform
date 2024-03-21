output "vpc_id" {
    value = aws_vpc.myvpc
}

output "public_subnet_id" {
    value = aws_subnet.subnet
}

output "ec2_sg_id" {
    description = "The ID of the EC2 Security Group."
    value       = aws_security_group.webserver
}

