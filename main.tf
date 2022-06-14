resource "aws_route53_zone" "deploy_sandbox" {
  name = "deploy.sandbox.msap.io"
}

resource "aws_route53_record" "smoketest_txt" {
  zone_id = aws_route53_zone.deploy_sandbox.zone_id
  name    = "smoketest"
  type    = "TXT"
  ttl     = 5

  records = [
    timestamp()
  ]
}
