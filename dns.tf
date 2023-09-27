/*

resource "aws_route53_zone" "gobackslash" {
  name = "gobacksla.sh"
}

resource "aws_route53_record" "kube" {
  zone_id = aws_route53_zone.gobackslash.zone_id
  name = "kube.gobacksla.sh"
  type = "A"
  ttl = 300
  records = [aws_instance.ec2.public_ip]
}
*/ 
