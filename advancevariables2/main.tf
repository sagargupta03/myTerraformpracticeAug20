

variable "var_image" {
  description = "image for container"
  #default = "ghost:alpine"
}

variable "var_container_name" {
  description = "Name of container"
  #default = "blog"
}

variable "var_int_port" {
  description = "internal port for container"
  default     = "2368"
}

variable "var_ext_port" {
  description = "exteranl port for container"
  default     = "80"
}



# Download the latest Ghost image
resource "docker_image" "my_image_id" {
  name = var.var_image
}

# Start the Container
resource "docker_container" "my_container_id" {
  name = var.var_container_name


  image = docker_image.my_image_id.latest
  ports {
    internal = var.var_int_port
    external = var.var_ext_port
  }
}

