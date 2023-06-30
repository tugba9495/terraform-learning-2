resource "aws_instance" "my_instance_terraform" {
  ami = data.aws_ami.amazon_linux_2023.id

  key_name      = "tugba@mac-key"
  instance_type = var.instance_type
  tags          = local.common_tags

}
resource "aws_iam_role" "iam_role_terraform" {
  name               = "my_iam_role_terraform"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
resource "aws_iam_policy" "iam_policy_terraform" {
  name        = "my_iam_policy_terraform"
  description = "iam policy for role"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:Describe*", 
      "Resource": "*"
    }
  ]
}
EOF
}
# Attach  IAM policy to the role
resource "aws_iam_role_policy_attachment" "policy_attachment" {
  role = aws_iam_role.iam_role_terraform.id

  policy_arn = "arn:aws:iam::371191637464:policy/my_iam_policy_terraform"
}

# # Launch EC2 instance with the IAM role
# resource "aws_instance" "instance_role" {
#   ami           = var.ami
#   instance_type = var.instance_type
#   key_name      = var.key_name



#   iam_instance_profile = "arn:aws:iam::371191637464:role/my_iam_role_terraform"

# }
