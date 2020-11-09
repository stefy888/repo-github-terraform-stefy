resource "aws_eip" {
  vpc      = true
  instance = "${aws_instance.web.id}"
  tags {
    name = "${var.project_name}-${var.environment}"
  }
}
