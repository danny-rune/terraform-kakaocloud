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
  instance_name = "test-server"
  image_id      = "이미지-ID-입력"
  flavor_id     = "플레이버-ID-입력"
  vpc_id        = "VPC-ID-입력"
}