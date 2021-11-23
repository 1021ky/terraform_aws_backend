module "ec" {
  source = "../modules/web"

  ami           = "ami-xxxxxxxxx"
  instance_type = "t3.micro"
  project       = "ecommerce"
}

module "backend" {
  source = "../modules/web"

  ami           = "ami-wwwwwwwwww"
  instance_type = "r5.large"
  project       = "backend"
}
