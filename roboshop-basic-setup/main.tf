module "COMPONENT" {
  count       =  var.ALL_COMPONENTS
  source      =  "./ec2"
  COMPONENT   =  each.key
  APP_VERSION =  each.value
}


#resource "null_resource" "sample" {
#  triggers = {
#    abc = timestamp()
#  }
#  for_each = var.sample
#  provisioner "local-exec" {
#    command = <<EOF
#echo COMPONENT = ${each.key}, APP_VERSION = ${each.value}
#EOF
#  }
#}







