
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
    //vpc_id           = module.instances.vpc_id.id
    ami              = var.ami
    depends_on       =  [module.s3, module.dynamodb ]
    instance_type    = var.instance_type
    availability_zone= var.availability_zone
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
    my-ip = var.my-ip
    
}
