
# Goat.tf version 0.9464222841160161
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/flowbucket"
}
}
resource "aws_s3_bucket" "flowbucket-2" {
bucket        = "${local.resource_prefix.value}-flowlogs-2"
acl           = "public-read"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs-2"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/flowbucket"
}
}
