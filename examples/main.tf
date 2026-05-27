module "ec2" {
  source            = "github.com/ServandoSoto/terraform-ec2-module?ref=v1.0.0"
  ami_id            = "ami-0c02fb55956c7d316"
  instance_type     = "t2.micro"
  instance_name     = "ec2-ejemplo"
  environment       = "dev"
  subnet_id         = "subnet-XXXXXXXXX" # reemplazar con output del vpc_module
  security_group_id = "sg-XXXXXXXXX"     # reemplazar con output del vpc_module
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}
