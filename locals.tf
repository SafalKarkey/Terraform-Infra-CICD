locals {
  env_config = {
    dev = {
      ami           = "ami-05ffe3c48a9991133"
      instance_type = "t2.micro"
      bucket_name   = "com.safal-dev-bucket"
    }
    prod = {
      ami           = "ami-05ffe3c48a9991133"
      instance_type = "t2.micro"
      bucket_name   = "com.safal-prod-bucket"
    }
  }

  selected_config = local.env_config[var.environment]

  name_prefix = "safal-${var.environment}"
  common-tags = {
    Creator = "Safal Karki"
  }
}