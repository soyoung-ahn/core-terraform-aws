 variable "ec2_name" {
   description = "ec2 instance tag Name"
   default = "EDIT - QA > Terraform_Provisioning (core)"
 }

 variable "subnet_id" {
   description = "subnet identity"
   default = "subnet-b7ef58df"
 }

 variable "security_groups" {
   description = "security group ids"
   type = list(string)
   default = ["sg-03252da9fdcf08949"]
 }

 variable "key_pair" {
   description = "pem key pair name"
   default = "soyoung.ahn-2"
 }

 variable "instance_type" {
   description = "ec2 instance type"
   default = "t2.nano"
 }

 variable "assign_ip" {
   description = "use assign ip"
   type = bool
   default = true
 }
