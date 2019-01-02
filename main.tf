#download latest ghost image

variable "image_name" {
  description = "Name of the container image"
  default = "ghost:latest"
}

variable "container_name" {
  description = "Name of the container"
  default = "blod"
}

variable "int_port" {
  description = "Internal Port Number"
  default = "2368"
}

variable "ext_port" {
  description = "Internal Port Number"
  default = "80"
}

resource "docker_image" "image_id" {
  name = "${var.image_name}"
}

resource "docker_container" "container_id" {
  name = "${var.container_name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}

output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
  value = "${docker_container.container_id.name}"
}
