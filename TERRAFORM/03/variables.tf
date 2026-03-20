variable "digitalocean_token" {
  description = "This is API key for cloud - this is secret"
  sensitive   = true
}

variable "project_environment" {
  description = "This is Type of environment for project - this is not secret, but we want to validate it"
  type        = string
  default     = "Development"

  validation {
    condition     = contains(["Development", "Production", "Staging"], var.project_environment)
    error_message = "Dozwolone wartosci environment to: Development, Production, Staging."
  }
}

variable "own_ssh_public_key" {
  description = "This is your own SSH public key - this is not secret, but we want to validate it"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDkGgVpbqoMqfMK7nevVqjjwXue1T1vaiuZ6UQRUVaCQRn6hGyBc5ekyiOqLsvnc58KdkvO9cv3CQrrLX38XWtG5dW9H90vIq1tvVwkMqD2lh0t1dexCox3dpQIO5K+8SCqB4PTdNTMtrZdjj6nNqlR8OqyJSPPtIeqJMqlbyU3dgW+GNgllgfS2EmqRRGFiE5USvVGaxyFVk06Df4bV4bzp7KeJ1qXGy9dYx5AczTGeFIKEmJpCRe7g3pe9XhsEpkNu8lxBjaXmKX+ZD3KPyewbwvqXDsKfo68JegYFGsUCRfQe1Lqg5dwgRJKRB4BVxjsOrQ5LSXzJtT/PiJaeXbB rsa-key-20260320"

  validation {
    condition     = can(regex("^ssh-(rsa|ed25519)\\s+[A-Za-z0-9+/]+={0,3}(\\s+.+)?$", var.own_ssh_public_key))
    error_message = "SSH public key musi zaczynac sie od 'ssh-rsa' lub 'ssh-ed25519', a nastepnie zawierac klucz w formacie base64."
  }
}