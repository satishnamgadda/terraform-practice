resource "aws_vpc" "main" {
  cidr_block       = var.vpc_range 
  instance_tenancy = "default"

  tags = {
    Name = "myvpc111"
  }
}