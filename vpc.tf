resource "aws_vpc" "ntiervpc" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = "ntier"
    }
}
resource "aws_subnet" "subnets" {
    count = length(var.subnet_name_tags)
    vpc_id     = aws_vpc.ntiervpc.id
    cidr_block = cidrsubnet(var.vpc_cidr,8,count.index)
    availability_zone = var.availability-zone[count.index]
#   cidr_block = var.subnet_cidr[count.index]
  tags = {
    "Name" =  var.subnet_name_tags[count.index]
  }
}