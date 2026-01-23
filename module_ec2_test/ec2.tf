module "catalogue" {
  source = " ../terraform_module"
  ami = ami_id
  instance_type = instance_type
  sg_ids = sg_ids
  tags = {
    Name = "module_ec2"
  }
}