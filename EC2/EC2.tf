provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}

/*
Preparar diretorio: terraform init
Validar codigo: terraform validate
O que esse cod vai fazer: terraform plan -var-file="prod.tfvars"
Criar/Atualizar bucket:  terraform apply -var-file="prod.tfvars"
Deletar bucket = terraform destroy
Formatar o codigo: terraform fmt
*/
