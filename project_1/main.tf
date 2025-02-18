provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3CMCCFKWWGMTTPP6"
  secret_key = "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"
}

resource "aws_instance" "instance-1" {
  ami = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "testkey"
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "grafana-Server"
  }
}

resource "aws_instance" "instance-2" {
  ami = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "testkey"
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "Node-Server"
  }
}