terraform { 
  cloud { 
    
    organization = "reyuorg" 

    workspaces { 
      name = "tf-hcp-cloud" 
    } 
  } 
}
provider "aws" {
  region = var.region
}
resource "aws_vpc" "vcs_driven_vpc" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = "true"
  enable_dns_support = "true"
  tags = {
    Name = "vcs_driven_vpc"
    ENV = "prod"
  }
}