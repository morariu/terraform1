variable "external_port" {
  type = number

  validation {
    condition = var.external_port <= 65535 && var.external_port > 0
    error_message = "Our external port must be in the range of 0 - 65535."
  }
}

variable "internal_port" {
  type = number
  default = 1880
  
  validation {
    condition = var.internal_port == 1880
    error_message = "The internal port should always be 1880."
  }
}

variable "counter" {
  type = number
  default = 1
}