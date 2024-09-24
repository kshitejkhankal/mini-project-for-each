resource "aws_internet_gateway" "vpc-igw" {
    vpc_id = aws_vpc.vpc-each-project.id
    tags = {
      Name= "mini-project-igw"
    }
    depends_on = [ aws_vpc.vpc-each-project ]
    lifecycle {
      ignore_changes = all
    }
  
}
resource "aws_route_table" "project-rt" {
    vpc_id = aws_vpc.vpc-each-project.id
    tags = {
      Name="mini-project-rt"
    }
    route  {
        cidr_block="0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc-igw.id
    
    }
    depends_on = [ aws_vpc.vpc-each-project ]
    lifecycle {
      ignore_changes = all
    }
  
}