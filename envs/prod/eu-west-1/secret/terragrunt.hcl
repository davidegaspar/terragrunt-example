terraform {
  source =
    "github.com:foo/infrastructure-modules.git//app?ref=v0.0.2"
}
inputs = {
  instance_count = 3
  instance_type  = "t2.micro"
}