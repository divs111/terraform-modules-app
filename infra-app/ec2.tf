# key-pair
resource "aws_key_pair" "my-key" {
    key_name = "${var.env}-my-infra-key"
    public_key = file("terra-module-key.pub")

    tags = {
        Environment = var.env
    }
}
#vpc and security groups

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
    name = "${var.env}-infra-app-sg"
    description = "This is the sg for my infra-app"
    vpc_id = aws_default_vpc.default.id
    #inbound rules
    ingress {
        to_port = 22
        from_port = 22
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
        description = "SSH Open"
    }
    #outbound rules
    egress {
        to_port = 0
        from_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
        description = "All access Open"
    }
    tags = {
      Name = "${var.env}-infra-app-sg"
      Environment = var.env
    }
}
    # ec2 instance
    resource "aws_instance" "my_instance" {
        count = var.ec2_count
        instance_type = var.instance_type
        ami = var.ami_id
        root_block_device {
          volume_size = var.env == "stg" ? 20 : var.root_block_default
          volume_type = "gp3"
        }
        tags = {
          Name = "${var.env}-infra-app-instance-${count.index +1}"
          Environment = var.env
        }
    }





