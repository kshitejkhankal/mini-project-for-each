resource "aws_route_table_association" "a" {
    for_each = aws_subnet.project-subnet
    subnet_id = each.value.id
    route_table_id = aws_route_table.project-rt.id
    lifecycle {
      ignore_changes = all
    }
    
  
}