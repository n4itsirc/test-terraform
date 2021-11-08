resource "aws_instance" "app_server" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name_var
  }
}