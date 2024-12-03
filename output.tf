output "pulic_ip" {
  value = aws_instance.out_first.public_ip
  description = "Pub Ip of inst"
}
