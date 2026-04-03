resource "kakaocloud_compute_instance_v2" "this" {
  name      = var.instance_name
  image_id  = var.image_id
  flavor_id = var.flavor_id
  key_pair  = var.key_pair
  
  network {
    uuid = var.vpc_id
  }
}