output "ec2-ip" {
    value = [for instance in aws_instance.each-type-instance : instance.public_ip]
  
}