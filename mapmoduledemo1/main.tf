# Download the latest Ghost Image
module "image" {
  source = "./image"
#  image  = var.image
 image = lookup(var.image, var.env)
}

# Start the Container
module "container" {
  source   = "./container"
  image    = module.image.image_out
  #name     = var.container_name
  name     = lookup(var.container_name, var.env)
  #int_port = var.int_port
  #ext_port = var.ext_port
    int_port = lookup(var.int_port, var.env)
    ext_port = lookup(var.ext_port, var.env)


}
