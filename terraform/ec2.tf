provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_instance" "mern_app" {
  ami           = "ami-06f621d90fa29f6d0" # Amazon Linux 2023 (Mumbai)
  instance_type = "t2.micro"
  key_name      = "mywebserver-key"

  tags = {
    Name = "MERNApp"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo docker pull ${var.frontend_image}",
      "sudo docker pull ${var.backend_image}",
      "sudo docker run -d -p 3000:3000 ${var.frontend_image}",
      "sudo docker run -d -p 5000:5000 ${var.backend_image}"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/.ssh/id_rsa")
      host        = var.ec2_host
    }
  }
} 