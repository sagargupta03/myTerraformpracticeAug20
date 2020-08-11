# Download the latest Ghost Image
module "image" {
  source = "./image"
  image  = var.image
}
