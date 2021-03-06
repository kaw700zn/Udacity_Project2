# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
  count = 4  
  subnet_id     = "subnet-064fd111a2417150b"
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"

  tags = {
    InstanceName = "Udacity T2"
   }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "udacity_m4" {
  count = 2
  subnet_id     = "subnet-064fd111a2417150b"
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "m4.large"

  tags = {
    InstanceName = "Udacity M4"
   }

}

