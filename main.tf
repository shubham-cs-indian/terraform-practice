locals {
  staging_env = "Staging"
}

resource "aws_instance" "ec2_example" {
   count = 3
   ami           = "ami-0851b76e8b1bce90b"
   instance_type = "t2.micro"
   
   tags = {
   Name = "${local.staging_env} - My-Server-${count.index}"
   }
}
