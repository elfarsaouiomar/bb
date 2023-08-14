
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}


resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"

   provisioner "local-exec" {
    command = "echo env >> private_ips.txt"
  }

}
