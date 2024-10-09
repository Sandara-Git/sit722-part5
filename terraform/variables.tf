# Sets global variables for this Terraform project.

variable app_name {
  default = "sit722sandara"
}

variable container_registry {
  default = "sit722sandaracr"
}

variable location {
  default = "australiasoutheast"
}

variable kubernetes_version { 
  default = "1.29.7"   
}
