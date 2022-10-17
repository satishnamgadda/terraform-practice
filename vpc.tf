resource "aws_vpc" "main" {
  cidr_block       = var.vpc_range
  instance_tenancy = "default"

  tags = {
    Name = "myvpc111"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_range
  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_range
  tags = {
    Name = "subnet2"
  }
}
resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3_range
  tags = {
    Name = "subnet3"
  }
}
resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet4_range
  tags = {
    Name = "subnet4"
  }
}
resource "aws_subnet" "main4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet5_range
  tags = {
    Name = "subnet5"
  }
}
resource "aws_subnet" "main5" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet6_range
  tags = {
    Name = "subnet6"
  }
}