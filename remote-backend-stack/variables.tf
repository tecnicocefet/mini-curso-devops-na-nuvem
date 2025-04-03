variable "tags" {
  description = "Tags to be applied to all resources"
  type        = map(string)
  default     = {
    Environment = "production"
    Project     = "devops-na-nuvem"
  }

}

variable "assume_role" {
  description = "The ARN of the role to assume"
  type        = object({
    region   = string
    role_arn = string
  })
  
  default     = {
    region = "us-east-1"
    role_arn = "arn:aws:iam::652847051172:role/DevOpsNaNuvemLive-7894d7ad-cad4-4b9e-8cab-ab12953c18ae"
 }
}

variable "remote_backend" {
  type        = object({
    bucket_name                                 = string
    dynamodb_table_name                         = string
    dynamodb_table_billing_mode                 = string
    dynamodb_table_hash_key_attribute_name      = string
    dynamodb_table_hash_key_attribute_type      = string
  })

  default     = {
    bucket_name                                = "devops-na-nuvem-remote-backend"
    dynamodb_table_name                        = "devops-na-nuvem-remote-backend"
    dynamodb_table_billing_mode                = "PAY_PER_REQUEST"
    dynamodb_table_hash_key_attribute_name     = "LockID"
    dynamodb_table_hash_key_attribute_type     = "S"
 }
}