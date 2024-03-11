#configure s3 bucket
resource "aws_s3_bucket" "mybucket"{
    bucket= "mybucket"
   // acl= "private"
    tags= {
        Name= join("-", [my-bucket, var.region])
    }
}
# add vpc-endpoint to be acceses through

resource "aws_vpc_endpoint" "myvpc-endpoint"{
    vpc_id= aws_vpc.myvpc.id
    service_name= "com.amazonaws.${var.region}.s3"
    route_table_ids= [aws_route_table.subnet-route.id]
    tags = {
    Name= join("-", [my-vpc-endpoint, var.region])
    }
}

