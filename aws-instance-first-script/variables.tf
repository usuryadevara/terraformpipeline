variable "region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = ""
}

#######Tagging######
variable "env_type" {
  description = "One of the hobsons supported environment type values: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = ""
}

variable "env_name" {
  description = "One of the hobsons supported environment name values: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = ""
}

variable "maintenance_contact" {
  description = "One of the hobsons supported maintenance contact values: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = "dl-awsowner-bigdata@hobsons.com"
}

variable "product_component" {
  description = "Hobsons product line components: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = "EMR"
}

variable "product_line" {
  description = "Hobsons product line for which these resources are provided: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = "Bigdata"
}

variable "provisioner" {
  description = "Tool used to create resource"
  default     = "terraform"
}

variable "owner_contact" {
  description = "One of the hobsons supported owner contact values: https://confluence.hobsons.com/display/DA/Server+Tagging+Policy"
  type        = string
  default     = "dl-awsowner-bigdata@hobsons.com"
}

