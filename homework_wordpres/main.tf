
  resource "aws_vpc" "vpc_wordpress" {
    cidr_block = var.cidr_block_forvpc
    tags = {
      Name = "vpcwordpress"
    }
    
  }
  resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forpublicsubnet1
    tags = {
      Name = "publicsubnet1"
    }
    
  }
  resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forpublicsubnet2
    tags = {
      Name = "publicsubnet2"

    }
    
  }
  resource "aws_subnet" "public_subnet_3" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forpublicsubnet3
    tags = {
      Name = "publicsubnet3"
    }
    
  }
  resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forprivatesubnet1
    tags = {
        Name = "privatesubnet1"
    }
    
  }
  resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forprivatesubnet2
    tags = {
      Name = "privatesubnet2"
    }
    
  }
  resource "aws_subnet" "private_subnet_3" {
    vpc_id = aws_vpc.vpc_wordpress.id
    cidr_block = var.cidr_block_forprivatesubnet3
    tags = {
        Name = "privatesubnet3"
    }
    
  }
  resource "aws_internet_gateway" "internetgateway_wordpress" {
    vpc_id = aws_vpc.vpc_wordpress.id
    tags = {
      Name = "internetgatewaywordpress"
    }
    
  }
  