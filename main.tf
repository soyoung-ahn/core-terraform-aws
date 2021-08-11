data "aws_caller_identity" "current" {}

data "aws_ami" "ec2_instance" {
  most_recent = true

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["${data.aws_caller_identity.current.account_id}"]
}

resource "aws_instance" "aws-ec2" {
  ami = data.aws_ami.ec2_instance.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "devos-seoul-keypair"
  vpc_security_group_ids = ["sg-03c12140254b38dc3"]
  subnet_id="subnet-0f0d20e44d0cf905a"
  tags = {
    Name = "devos-terraform-ec2"
  }
}