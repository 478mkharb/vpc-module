resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "demo-igw"
  }
}
