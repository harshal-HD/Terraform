module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr_block    = "192.168.0.0/16"
  subnet_cidr_block = "192.168.0.0/22"
  az                = "ap-northeast-1a"
  public_ip         = true
}

module "ec2" {
  source            = "./modules/ec2"
  ami_id            = "ami-0b4a1b07f9ca13717"
  ins_type          = "t3.micro"
  key               = "my-key"
  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}
