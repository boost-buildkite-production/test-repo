
# Goat.tf version 0.29236088015719885
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
}
resource "aws_s3_bucket" "flowbucket-2" {
bucket        = "${local.resource_prefix.value}-flowlogs-2"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs-2"
Environment = local.resource_prefix.value
}
}
