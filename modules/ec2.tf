resource "aws_instance" "ec2Stefy" {
  ami = "${var.ami}"
  #    ami           = "ami-0bb3fad3c0286ebd5"
  instance_type = "${var.instance_type}"
  Key_name = "${var.Key_name}"
  vpc_security_group_ids = [
    "${aws_security_group.sg.id}"
  ]
  tags = {
  Name = "${var.project_name"}-${var.environment}"
  }
}
