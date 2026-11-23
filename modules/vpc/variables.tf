variable "name_prefix"{
    description = "Name of the VPC"
    type        = string
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "azs" {
    description = "List of availability zones for the VPC"
    type        = list(string)
}
