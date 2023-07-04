resource "aws_vpc" "terraform_vpc" {
  cidr_block = var.aws_vpc
  tags = merge(
    local.common_tags
   
  )
}
resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.aws_publicsubnet1

  tags = {
    Name = "publicsubnet1"
  }
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.aws_publicsubnet2

  tags = {
    Name = var.aws_vpc_name
  }
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.aws_privatesubnet1

  tags = {
    Name = "privatesubnet1"
  }
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.aws_privatesubnet2

  tags = {
    Name = "privatesubnet2"
  }
}
