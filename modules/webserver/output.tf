output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "public_subnet_id" {
    value = aws_subnet.my-subnet.id
}

output "ec2_sg_id" {
    description = "The ID of the EC2 Security Group."
    value       = aws_security_group.my-sg.id
}

