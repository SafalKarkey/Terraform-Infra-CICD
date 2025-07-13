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
    default = {
      ami           = "ami-05ffe3c48a9991133"
      instance_type = "t2.micro"
      bucket_name   = "com.safal-default-bucket"
    }
  }

  selected_config = local.env_config[terraform.workspace]

  name_prefix = "safal-${terraform.workspace}"
  common-tags = {
    Creator = "Safal Karki"
  }
}