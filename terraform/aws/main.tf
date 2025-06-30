terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "my_ssh_key" {
  key_name   = "terraform-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCifwY0T9XIcZflQAmmKv/DEnm4ba7+CuXXGGgu9e9/tslWboAxehmoY1X4LRNnoySgOFnEcbe2psEnC5DblrzLN/49NFKBet0ghHMenIX87zzra5OnX/MBfrEkKx0mZWDBkzF/LabzyEzjv/WaO8RlXCBi04XblzRNai1fJktXMe6YD0eQtGcmEoVE6yDlRsOVYpVAQ4D4mKkAVLy4ZCVeBArY3eXU0AdDURHMkoV4enSHBj1RT1Y4K+iUF87aRwBK4vZWvB/QDghBGhK904XsJD2c/SustJT4vR19Lg6kPmXyvmcPf7O+qlhZsVqFe5rjqppwSK1FgK/qtvl1vvBaAOY6ecb+OAjOHRx4UfHvy+HWupY6SfJ54To6QlovuXfzRXHvJAXthB2upUe11bXCz00w109euGs2CL2BWLZ2s87BJIU6nnoXG6iGAlo2IPk0l2EM8KRehDWdz2aOUuTXITqwvbPWMqn12E61ImqqeHdzuJ0kUtPn/x450DQK7S8= asd@asdpc"
}

resource "aws_security_group" "ec2_sg" {

}

resource "aws_instance" "my_first_ec2" {
  ami           = "ami-0f3f13f145e66a0a3"
  instance_type = "t2.micro"

  key_name = aws_key_pair.my_ssh_key.key_name

  tags = {
    app  = "deploy"
    name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.my_first_ec2.id
}
output "instance_public_ip" {
  value = aws_instance.my_first_ec2.public_ip
}
