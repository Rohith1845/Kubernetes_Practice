variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"

}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "sg_id" {
  type = list 
  default = "sg-056382c61599c3d5d"
}