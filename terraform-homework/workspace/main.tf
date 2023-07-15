resource "aws_sqs_queue" "sqs_queue" {
  name = "${terraform.workspace}-sqs"
}