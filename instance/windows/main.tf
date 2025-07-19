data "aws_ami" "windows_2019" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}

resource "aws_instance" "windows" {
  ami           = data.aws_ami.windows_2019.id
  instance_type = var.instance_type   # Change as needed
  key_name      = var.key_name    # Replace with your actual key pair name

  # Use a default security group or specify one
  vpc_security_group_ids = ["sg-0b5fda7c5dc3fc10c"]  # Replace with your SG ID

  tags = {
    Name = "Windows2019-EC2"
  }
}
