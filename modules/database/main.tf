#congigure dynamodb database
resource "aws_dynamodb_table" "main" {
name           = "main"
billing_mode   = "PAY_PER_REQUEST"
hash_key       = "id"
attribute {
    name = "id"
    type = "S"
}
tags= {
    Name= "${join("-", ["dynamodb", var.region])}"

}
}

