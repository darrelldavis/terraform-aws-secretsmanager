variable "name" {
  description = "Name of secret "
  type        = string
}

variable "secret_string" { 
  description = "Secret string (use only one of secret_string, secret_string_json or secret_binary)"
  type        = string
  default     = ""
}

variable "secret_string_json" { 
  description = "Json-encoded secret string(s) (use only one of secret_string, secret_string_json or secret_binary)"
  type        = map(string)
  default     = {}
}

variable "secret_binary" { 
  description = "Binary secret string(s) (use only one of secret_string, secret_string_json or secret_binary)"
  default     = ""
}

variable "description" {
  type    = string
  default = "Terraform-managed secret"
}

variable "tags" {
  description = "User-Defined tags"
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "AWS KMS customer master key (CMK) to be used to encrypt the secret values"
  type        = string
  default     = ""
}

variable "rotation_days" {
  description = "Specifies the number of days between automatic scheduled rotations of the secret"
  type        = string
  default     = "90"
}
