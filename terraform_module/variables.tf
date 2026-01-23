variable "ami_id" {
    type = string
    description = "creating ec2 with ami_id"
}

variable "instance_type" {
    type = string
    description = "provide instance_type to create ec2"
    validation {
    condition     = contains(["t3.micro", "t2.small"], var.instance_type)
    error_message = "Invalid runtime provided. Must be either nodejs20.x or nodejs22.x"
  }
}

variable "sg_id" {
    type = list
  
}

variable "tags" {
  type = map
  default = {}
}