#dev infrastructure
module "dev-infra" {
    source = "./infra-app"
    env = "dev"
    bucket_name = "infra-app-terra-bucket"
    ec2_count = 1
    instance_type = "t2.micro"
    ami_id = "ami-0731becbf832f281e"
    hash_key = "divID"
    root_block_default = 10
}

#stg infrastructure
module "stg-infra" {
    source = "./infra-app"
    env = "stg"
    bucket_name = "infra-app-terra-bucket"
    ec2_count = 2
    instance_type = "t2.micro"
    ami_id = "ami-0731becbf832f281e"
    hash_key = "divID"
    root_block_default = 10
}