variable "sg_name" {
    default = {}
}

variable "sg_description" {
    default = "Please provide sg name"
  
}

variable "vpc_id" {
    default = {}
}

variable "sg_tags" {
    type = map
    default = {}
}

variable "project_name" {
    default = {}
}

variable "environment" {
    default = {}
}