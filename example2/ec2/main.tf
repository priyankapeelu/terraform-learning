resource "aws_instance" "sample" {
  ami                    = data.aws_ami.example.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg]
  //  provisioner "local-exec" {
  //    command = <<EOF
  //sleep 60
  //cd /home/centos/ansible
  //ansible-playbook -i ${self.public_ip}, roboshop.yml -e HOST=all -e role_name=frontend -e ENV=dev -e ansible_user=centos -e ansible_password=DevOps321
  //EOF
  //
  //  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "ansible-pull -U https://github.com/priyankapeelu/ansible roboshop.yml -e HOST=localhost -e role_name=frontend -e ENV=dev"
    ]

variable "sg" {}

output "public_ip" {
  value = aws_instance.sample.public_ip

}
