
module "s3" {
    source = "../modules/s3-bucket"
    region = var.region
}

module "dynamodb" {
    source                = "../modules/database/"
    region = var.region
}

module "instances" {
    source           = "../modules/webserver"
    vpc_id           = var.vpc_id
    ami              = var.ami
    depends_on       = [module.database]

}
