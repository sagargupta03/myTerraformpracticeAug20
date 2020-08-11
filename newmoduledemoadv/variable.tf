variable "image" {
  description = "image for container"
 default = "ghost:latest"
}

variable "container_name" {
  description = "Name of container"
  default = "my_container"
}

variable "int_port" {
  description = "internal port for container"
  default = "2368"
}
variable "ext_port" {
  description = "external port for container"
  default = "80"
}
