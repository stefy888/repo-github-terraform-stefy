module "ec2module" {

  source        = "../../modules/ec2"
  vpc_id        = "vpc-5a69d831"
  project_name  = "project1"
  environment   = "test"
  ami           = "ami-0bb3fad3c0286ebd5"
  instance_type = "t2 micro"
  key_name      = "keyTesting"

}
