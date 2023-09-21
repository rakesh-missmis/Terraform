output "aws_instance" {               #instance Name
    value = aws_instance.rakesh.tags 
}

output "instance_public_ip" {         # Shoew the Public Ip
  value = aws_instance.rakesh.public_ip
}

output "aws_instance_ami-id" {        # Show the Instance ami-id
    value = aws_instance.rakesh.ami
}
