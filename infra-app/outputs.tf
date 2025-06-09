output "ec2_public_ips" {
    value = aws_instance.my_instance[*].public_ip
    
}
output "ec2_instance_name" {
    value = aws_instance.my_instance[*].tags.Name
    }
