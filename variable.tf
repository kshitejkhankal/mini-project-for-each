variable "aws-vpc-cidr" {
    type = string
    description = "vpc-project"
    default = "40.0.0.0/16"

  
}
variable "aws-subnet-az" {

    type =map(object({
    cidr_block= string
    availability_zone =string
  
    }))

    default = {
      "subnet1" = {
        cidr_block="40.0.1.0/24"
        availability_zone="ap-south-1a" 
        
      }
     
      # "subnet2" = {
      #   cidr_block="40.0.2.0/24"
      #   availability_zone ="ap-south-1b" 
      # }

      # "subnet3" = {
      #   cidr_block="40.0.3.0/24"
      #   availability_zone="ap-south-1c" 
      # }

    }
    
   
  
}
