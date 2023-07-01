data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}


data "aws_ami" "ec2_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-2023.1.20230629.0-kernel-6.1-x86_64"]

  }
  filter {

    name   = "architecture"
    values = ["x86_64"]
  }

}
