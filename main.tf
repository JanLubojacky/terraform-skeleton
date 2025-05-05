locals {
  default_tags = {
    "tag" : "tag-value"
  }

  state_bucket_name = "${var.env}-terraform-state"
  dynamically_named_bucket = "data-${var.env}"
}

