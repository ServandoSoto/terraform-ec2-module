variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
  default     = "ec2-web"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
}

variable "environment" {
  description = "Entorno de despliegue (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "subnet_id" {
  description = "ID de la subred donde se lanzará la instancia EC2"
  type        = string
}

variable "security_group_id" {
  description = "ID del grupo de seguridad para la instancia EC2"
  type        = string
}
