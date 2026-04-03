variable "vm_names" {
  type    = list(string)
  default = ["danny-terraform-test-a"]
}

variable "image_id" {
  description = "카카오클라우드 이미지 ID"
  type        = string
}

variable "flavor_id" {
  description = "카카오클라우드 플레이버 ID"
  type        = string
}

variable "vpc_id" {
  description = "카카오클라우드 VPC ID"
  type        = string
}