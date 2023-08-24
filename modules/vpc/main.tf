resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Main VPC"
  }
}

resource "aws_subnet" "private" {
  count             = 3
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index + 1)
  vpc_id            = aws_vpc.main.id
  availability_zone = element(["us-east-1a", "us-east-1b", "us-east-1c"], count.index) 
}
