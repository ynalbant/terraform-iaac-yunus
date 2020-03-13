provider "aws" {
  region = "us-west-2"
}

# gets ubuntu AMI

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}




output "UBUNTU_AMI_ID" {
  value       = "${data.aws_ami.ubuntu.id}"
}




# gets centos  AMI

data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Canonical
}


output "CENTOS_AMI_ID" {
  value       = "${data.aws_ami.centos.id}"
}


resource "aws_key_pair" "provisioner" {
  key_name   = "provisioner-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.provisioner.key_name}"

  provisioner "file" { 
  connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key  = "${file("~/.ssh/id_rsa")}"
      host     = "${self.public_ip}"
         }
         source      = "test"
         destination = "/tmp/"
    }

    provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key  = "${file("~/.ssh/id_rsa")}"
      host     = "${self.public_ip}"
         }
        inline = "sudo apt-get install telnet -y"
    }

  tags = {
    Name = "HelloWorld"
  }
}