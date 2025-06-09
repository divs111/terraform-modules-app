variable "env" {
    description = "This is the environment for my infra"
    type = string
}

variable "bucket_name" {
    description = "This is bucket name"
    type = string
}
variable "ec2_count" {
    description = "This is the number of ec2 instances for my infra-app"
    type = number
}
variable "instance_type"{
    description = "This is the type of instance"
    type = string
}
variable "ami_id"{
    description = "This is the ami-id"
    type = string
}
variable "root_block_default" {
    description = "This is the default volume size of instance"
    type = number
}
variable "hash_key" {
    description = "this is the hash key"
    type = string
  }