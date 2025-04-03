output "internet_gateway_this" {
  value = aws_internet_gateway.this.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.this.id
}

output "private_subnet_arn" {
  value = aws_subnet.private[*].arn
}

output "public_subnet_arn" {
  value = aws_subnet.public[*].arn
}
