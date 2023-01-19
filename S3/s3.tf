provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "vinicius-tf-buckett" {
  bucket = "vinicius-tf-buckett"

  tags = {
    Name        = "vinicius-tf-buckett"
    Environment = "Dev"
    Owner   = "Vinicius Carvalho"
  }
}


/*
Preparar diretorio: terraform init
Validar codigo: terraform validate
O que esse cod vai fazer: terraform plan -var-file="prod.tfvars"
Criar/Atualizar bucket:  terraform apply -var-file="prod.tfvars"
Deletar bucket = terraform destroy
Formatar o codigo: terraform fmt
*/

