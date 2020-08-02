# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = lookup(var.image, var.env)
}

# Start the Container
resource "docker_container" "container_id" {
  name  = lookup(var.container_name, var.env)
  image = docker_image.image_id.latest
  ports {
    internal = lookup(var.int_port, var.env)
    external = lookup(var.ext_port, var.env)
  }
}

