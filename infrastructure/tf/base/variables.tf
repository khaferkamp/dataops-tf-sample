variable "domain" {
  type        = string
  default     = "kevinhaferkamp.cloud"
  description = "The name of the default domain"  
}

variable "do_token" {
  type = string
  description = "Digital Ocean Token"
}

variable "env" {
  type = string
  description = "environment name"
}