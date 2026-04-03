terraform {
  required_providers {
    kakaocloud = {
      source  = "kakaoenterprise/kakaocloud"
      version = ">= 0.1.0"
    }
  }
}

provider "kakaocloud" {
  access_key_id     = var.access_key
  access_secret_key = var.secret_key
  region            = "kr-central-1"
}

module "my_vm" {
  source        = "./modules/compute"
  for_each = toset(var.vm_names)
  instance_name = each.key
  image_id      = var.image_id
  flavor_id     = var.flavor_id
  vpc_id        = var.vpc_id
}