locals {
  default_tags = {
    "tag" : "tag-value"
  }

  dynamically_named_bucket = "data-${var.env}"
}

