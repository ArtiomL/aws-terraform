# ACM Output Variables

output "arn" {
  description = "ACM certificate ARN"
  value       = "${aws_acm_certificate.main.arn}"
}
