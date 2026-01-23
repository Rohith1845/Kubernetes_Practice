resource "aws_instance" "terraform" {

    ami = var.ami_id
    instance_type = var.instances ? "t3.micro" : "t2.small"
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = {
      Name = "jyo-2"
      Terraform = "true"
    }
}

resource "aws_security_group" "sg" {
  name = "allow-all"
  description = "this is my sg"

  tags = {
    Name = "allow-all"
  }
  
}