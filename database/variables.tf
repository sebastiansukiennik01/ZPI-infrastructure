variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "sql_admin_login" {
  type = string
  sensitive = true
}

variable "sql_admin_password" {
  type = string
  sensitive = true  
}