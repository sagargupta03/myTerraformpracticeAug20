variable "env" {
  description = "env:dev or prod"
}

variable "image" {
   type        = map
  description = "image for container"
 #default = "ghost:latest"
}

variable "container_name" {
  type        = map
  description = "Name of container"
#  default = "my_container"
}

variable "int_port" {
   type        = map
  description = "internal port for container"
#  default = "2368"
}
variable "ext_port" {
  type        = map
  description = "external port for container"
#  default = "80"
}
