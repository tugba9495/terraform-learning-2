module "aws_iam_policy_document" {
    source = "../../child-module"
    
   
    deletion_window_in_days = 7
    is_enabled = true
    enable_key_rotation = true

  
}