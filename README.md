# terraform-learning-2
1. Create KMS Key Resource in the KMS Folder (Child Module):

In your Terraform child module located in the KMS folder, create a new KMS key resource.

2. Create a New KMS Key Policy using aws_iam_policy_document:

Use the aws_iam_policy_document data source to define a new KMS key policy in Terraform syntax. This allows for easier management and updates.

3. Reference the New Policy as a Data Source in your KMS Key:

In the KMS key resource block, reference the newly created policy as a data source using the data argument.

4. Create a New S3 Bucket in the S3 Folder (Child Module):

In your Terraform child module located in the S3 folder, create a new S3 bucket resource.

5. Enable Versioning for the S3 Bucket:

Configure the S3 bucket resource to enable versioning. This allows for multiple versions of an object to be stored in the bucket.
6. Enable AWS S3 Bucket Server-Side Encryption Configuration:

Configure the S3 bucket resource to enable server-side encryption. This ensures that the objects stored in the bucket are encrypted at rest.

7. Create a Module for KMS in the Same File (S3 Bucket/main.tf):

In the main.tf file of the S3 bucket module, create a separate module for the KMS key.

8. Call the Child Module in the KMS Folder:

Within the S3 bucket module, call the child module located in the KMS folder to use the KMS key.