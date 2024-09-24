resource "aws_vpc" "vpc-each-project" {
    cidr_block = var.aws-vpc-cidr
    tags = {
      Name = "vpc-each-project"
    }
    lifecycle {
      ignore_changes = all
    }
  
}
resource "aws_subnet" "project-subnet" {
    for_each = var.aws-subnet-az
    cidr_block = each.value.cidr_block
    availability_zone = each.value.availability_zone
     vpc_id = aws_vpc.vpc-each-project.id
    tags = {
      Name = "subnet-${each.key}"
    }
     depends_on = [ aws_vpc.vpc-each-project ]
     lifecycle {
       ignore_changes = all
     }
     
  
}
 

