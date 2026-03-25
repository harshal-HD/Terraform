module "vpc" {
  source            = "./module/vpc"
  vpc_cidr_block    = "192.168.0.0/16"
  subnet_cidr_block = "192.168.0.0/22"
  az                = "ap-southeast-2"
  public_ip         = true
}


module "ec2" {
  source            = "./module/ec2"
  ami_id            = "ami-0ac4101c751eae35f"
  ins_type          = "t3.micro"
  key               = "sky_01X"
  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}
