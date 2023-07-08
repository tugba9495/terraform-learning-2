output "aws_key_id" {
    value = aws_kms_key.my_kms_key.id
    description = "kms key id output"
}

  