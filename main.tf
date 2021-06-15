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
  key_name = "devos-tokyo-test-key"
  vpc_security_group_ids = ["sg-0450393f4cf62361c"]
  subnet_id="subnet-09be00293d7e87e26"
  tags = {
    Name = "dave-terraform-ec2"
  }
}