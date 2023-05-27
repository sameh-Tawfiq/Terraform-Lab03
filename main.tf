# Configure the provider software version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

# Configue the ec2 resource
resource "aws_instance" "my-ec2"{
    ami="ami-006dcf34c09e50022"
    instance_type="t2.micro"
}

# Configure eip resource
resource  "aws_eip" "my-eip"{
    vpc = true
}

# Associate eip to the ec2
resource "aws_eip_association" "associate"{
    instance_id=aws_instance.my-ec2.id
    allocation_id=aws_eip.my-eip.id
}

output "eip_value" {
    description = "VMs Private IP"
    value= aws_instance.my-ec2.public_ip

}
