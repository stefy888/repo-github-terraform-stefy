resource "aws_security_group" "sg" {
  name        = "SG-${var.sg_name}"
  description = "SG for ${var.sg_name}"
  vpc_id      = "${var.vpc_id}"
  # security_group_id = "${aws_security_group.id}"

  # name        = "SG-${var.project_name}-${var.environment}"
  # description = "SG for ${var.project_name}-${var.environment}"


  ingress {
    #  description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  /*
  tags = {
    Name = "allow_port"
  }*/
}
