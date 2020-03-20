resource "aws_route53_record" "wordpress" {
  zone_id = "Z1LR4CI8PDFACN"
  name    = "wordpress.ayyildizrug.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}