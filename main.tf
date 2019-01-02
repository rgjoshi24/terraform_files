#download latest ghost image

resource "docker_image" "image_id" {
  name = "ghost:latest"
}

resource "docker_container" "container_id" {
  name = "blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "80"
  }
}
