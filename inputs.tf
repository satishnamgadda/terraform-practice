variable "region" {
    type     = string
    default  = "us-west-2"
}
variable "vpc_cidr" {
    type      = string
    default   = "10.10.0.0/16"
}
#variable "subnet_cidr" {
 #   type    = list(string)
#}
variable "subnet_name_tags" {
    type      = list(string)
  
}
variable "availability-zone" {
    type     = list(string)
  
}