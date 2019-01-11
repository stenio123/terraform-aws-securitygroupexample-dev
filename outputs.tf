output "security_group_id" {
  value = "${aws_security_group.allow_all.id}"
}

output "security_group_arn" {
  value = "${aws_security_group.allow_all.arn}"
}