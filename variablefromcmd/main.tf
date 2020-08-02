variable "image" {
  description = "image for container"
  #default = "ghost:latest"
}

# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = var.image
}

