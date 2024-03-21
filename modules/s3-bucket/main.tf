#configure s3 bucket
resource "aws_s3_bucket" "mybucket"{
    bucket= "mybucket11221122"
    
    tags= {
        Name= "${join("-", ["my-bucket", var.region])}"
    }
}

