# ACM Resources

locals {
  tags = {
    CreatedBy   = "Terraform"
    Environment = "${var.tag_environment}"
  }
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_acm_certificate" "main" {
  domain_name       = "${var.domain_name}"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${merge(local.tags, var.tags_shared, map(
    "Name", "cert${var.tag_name}${var.tag_environment}"
  ))}"
}

resource "aws_route53_record" "acm" {
  zone_id = "${var.zone_id}"
  name    = "${aws_acm_certificate.main.domain_validation_options.0.resource_record_name}"
  ttl     = 60
  type    = "${aws_acm_certificate.main.domain_validation_options.0.resource_record_type}"
  records = ["${aws_acm_certificate.main.domain_validation_options.0.resource_record_value}"]
}

resource "aws_acm_certificate_validation" "main" {
  certificate_arn         = "${aws_acm_certificate.main.arn}"
  validation_record_fqdns = ["${aws_route53_record.acm.fqdn}"]
}
