# CHANGELOG - terraform-ec2-module

Todos los cambios notables de este módulo serán documentados en este archivo.
Formato basado en [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [v0.1.0] - 2026-05-26
### Added
- Commit inicial del módulo ec2
- Recurso `aws_instance` parametrizado con variables
- Archivo `variables.tf` con variables: ami_id, instance_type, instance_name, environment, subnet_id, security_group_id
- Archivo `outputs.tf` con outputs: instance_id, instance_public_ip

---

## [v0.2.0] - 2026-05-26
### Added
- Documentación automática generada con terraform-docs
- Archivo `README.md` con descripción de inputs, outputs y recursos del módulo

---

## [v0.3.0] - 2026-05-26
### Added
- Carpeta `ec2_module_test/` con test de infraestructura usando Terratest
- Archivo `ec2_test.go` que valida outputs instance_id e instance_public_ip
- Archivo `.gitignore` para excluir archivos terraform generados localmente

---

## [v1.0.0] - 2026-05-27
### Changed
- Versión estable y funcional del módulo
- Arquitectura modular completa desacoplada del código monolítico original
