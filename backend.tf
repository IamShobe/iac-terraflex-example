terraform {
  backend "http" {
    address = "http://localhost:8600/main/state"
    lock_address = "http://localhost:8600/main/lock"
    lock_method = "PUT"
    unlock_address = "http://localhost:8600/main/lock"
    unlock_method = "DELETE"
  }
}

resource "local_file" "foo" {
  content = "foo"
  filename = "${path.module}/foo.bar"
}

