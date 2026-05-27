# Ejemplo de uso - terraform-ec2-module

Este directorio contiene un ejemplo funcional de cómo usar el módulo `ec2_module`.

## ¿Qué despliega este ejemplo?

- Una instancia EC2 con Apache instalado vía user_data
- Asociada a una subnet y security group existentes (provistos por el vpc_module)

## Uso

```hcl
module "ec2" {
  source            = "github.com/ServandoSoto/terraform-ec2-module?ref=v1.0.0"
  ami_id            = "ami-0c02fb55956c7d316"
  instance_type     = "t2.micro"
  instance_name     = "ec2-ejemplo"
  environment       = "dev"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
}
```

## Outputs disponibles

| Output | Descripción |
|--------|-------------|
| instance_id | ID de la instancia EC2 |
| instance_public_ip | IP pública de la instancia EC2 |

## Requisitos

- Terraform >= 1.0.0
- AWS Provider ~> 5.0
- Credenciales AWS configuradas
- subnet_id y security_group_id provistos por el vpc_module
