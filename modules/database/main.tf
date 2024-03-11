#congigure dynamodb database
resource "aws_dynamodb_table" "main" {
name           = "main"
billing_mode   = "PAY_PER_REQUEST"
hash_key       = "id"
attribute {
    name = "id"
    type = "S"
}
}

#configure vpc-endpoint to access dynamodb
resource "aws_vpc_endpoint" "dynamodb" {
vpc_id = aws_vpc.myvpc.id
service_name = "com.amazonaws.${var.region}.dynamodb"
route_table_ids = [aws_route_table.subnet-route.id]
tags = {
    Name = join("-", [dynamodb, var.region])
}
}

