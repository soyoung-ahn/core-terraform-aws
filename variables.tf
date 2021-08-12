 variable "ec2_name" {
   description = "ec2 instance tag Name"
   default = "demo-terraform-core-ec2"
 }

 variable "subnet_id" {
   description = "subnet identity"
   default = "subnet-0f0d20e44d0cf905a"
 }

 variable "security_groups" {
   description = "security group ids"
   type = list(string)
   default = ["sg-03c12140254b38dc3"]
 }

 variable "key_pair" {
   description = "pem key pair name"
   default = "devos-seoul-keypair"
 }

 variable "instance_type" {
   description = "ec2 instance type"
   default = "t2.micro"
 }

 variable "assign_ip" {
   description = "use assign ip"
   type = bool
   default = true
 }