resource "aws_route53_record" "component" {
  zone_id = "Z05705092FH54GCN798S"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}