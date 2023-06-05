variable "ami" {
    description = "defining variables name"
    type = string
    default = "ami-0715c1897453cabd1"
  
}
variable "instance_type" {
    description = "defining instance type"
    type = string
    default = "t2.micro"
}
variable "env" {}
variable "project_name" {}
variable "ec2_sg" {}
variable "vpc_cidr" {}
#variable "public_subnet_cidr_blocks" {}
variable "public_subnet" {
    type = list(string)
}
variable "key_name" {
    description = "defining key name"
    type = string
    default = "terraform_ec2_key"
  
}
