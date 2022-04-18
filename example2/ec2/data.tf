data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent = true
  name_regex  = "base_ami_with_ansible"
  owners      = ["self"]
}
