module "COMPONENT" {
  count      = length (var.COMPONENTS)
  source     = "./ec2"
  COMPONENT  = var.COMPONENT[count.index]
  APP_VERION = var.APP_VERSION[count.index]
}










