resource "aws_instance" "each-type-instance" {
    
    ami = "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    key_name = "IAM"
    security_groups = [aws_security_group.sg-project.id]
    associate_public_ip_address = true
    for_each = aws_subnet.project-subnet
    subnet_id = each.value.id
    user_data = file("./install.sh")
    tags = {
      Name="instance-project- ${each.key}"
    }
    
  
}