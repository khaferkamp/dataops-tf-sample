###############################
#                             #
#         COMMON VARS         #
#                             #
###############################
variable "project" {
  type        = string
  description = "Name of Project"
}

variable "name" {
  type        = string
  description = "Name of Clusters"
}

variable "domain" {
  type        = string
  default     = "kevinhaferkamp.cloud"
  description = "The name of the default domain"
}

variable "do_token" {
  type        = string
  description = "Digital Ocean Token"
}

###############################
#                             #
#           ENV VARS          #
#                             #
###############################

variable "env" {
  type        = string
  description = "Name of Environment"
}

variable "ssh_key_name" {
  type        = string
  description = "Name of SSH Key"
}

variable "region" {
  type        = string
  description = "Region of Cluster"
}

variable "cluster_version" {
  type        = string
  description = "Version of Cluster"
}
