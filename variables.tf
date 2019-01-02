variable "image_name" {
  description = "Name of the container image"
  default = "ghost:latest"
}

variable "container_name" {
  description = "Name of the container"
  default = "blog"
}

variable "int_port" {
  description = "Internal Port Number"
  default = "2368"
}

variable "ext_port" {
  description = "Internal Port Number"
  default = "80"
}
