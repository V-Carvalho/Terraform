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
Preparar diretorio: init
Validar codigo: terraform validate
O que esse cod vai fazer: terraform plan
Criar/Atualizar bucket:  terraform apply
Deletar bucket = terraform destroy
*/

