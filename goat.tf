
# Goat.tf version 0.5059141976664328
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/"
}
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
}
