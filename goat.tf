
# Goat.tf version 0.6995662477697244
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/"
}
server_side_encryption_configuration {
rule {
apply_server_side_encryption_by_default {
sse_algorithm     = "aws:kms"
kms_master_key_id = "${aws_kms_key.logs_key.arn}"
}
}
}
}
