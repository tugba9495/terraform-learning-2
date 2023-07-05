##########VPC CREATION################
resource "aws_vpc" "vpc_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = merge(
    local.common_tags,
    {
      "Name"       = "${var.env}-instance"
      "Environment" = var.env
    }
  )
}
resource "aws_subnet" "public_subnet" {
  count             = length(var.public_subnet_cidr_blocks)
  vpc_id            = aws_vpc.vpc_vpc.id
  cidr_block        = var.public_subnet_cidr_blocks[count.index]
 

  tags = merge(var.tags, {
    Name = "PublicSubnet-${count.index + 1}"
  })
}
resource "aws_subnet" "private_subnet" {
  count             = length(var.private_subnet_cidr_bloks)
  vpc_id            = aws_vpc.vpc_vpc.id
  cidr_block        = var.private_subnet_cidr_bloks[count.index]
  
  tags              = merge(var.tags, { "Name" = "Private_Subnet_${count.index + 1}" })
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_vpc.id
   tags   = merge(var.tags, {
    "Name" = var.aws_internet_gateway
  })
}
resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc_vpc.id
    tags   = merge(var.tags, {
    "Name" = var.aws_route_table
    })
    route {
        cidr_block = var.cidr_block
        gateway_id = aws_internet_gateway.gw.id
    }


  
}
resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.vpc_vpc.id
    tags   = merge(var.tags, {
    "Name" = var.aws_route_table_private
  })
  
}
resource "aws_route_table_association" "public_subnet_association" {
  count = length(var.public_subnet_cidr_blocks)

  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_route_table.id
  
  }
  resource "aws_route_table_association" "private_subnet_association" {
  count = length(var.private_subnet_cidr_bloks)

  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_route_table.id
  
  }
  resource "aws_eip" "nat_gw_eip" {
  domain = "vpc"

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_eip"
    }
  )
}
resource "aws_nat_gateway" "nat_gatway" {
   
  allocation_id = aws_eip.nat_gw_eip.id
  subnet_id     = aws_subnet.public_subnet[0].id

  tags          = merge(var.tags,
  {
    "Name" = var.aws_nat_gateway
   
  }

  )
}
resource "aws_route" "private_nat_gateway_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gatway.id
}


  




  