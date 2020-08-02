variable "env" {
  description = "env:dev or prod"
}

variable "container_name" {
  description = "Name of container"
  type        = map
  default = {
    prod = "prod_app"
    dev  = "dev_app"
  }
}

variable "image" {
  description = "image for container"
  type        = map
  default = {
    prod = "ghost:alpine"
    dev  = "ghost:latest"
  }
}

variable "int_port" {
  description = "internal port for container"
  type        = map
  default = {
    prod = "2368"
    dev  = "2368"
  }
}

variable "ext_port" {
  description = "external port for container"
  type        = map
  default = {
    prod = "80"
    dev  = "80"
  }
}
