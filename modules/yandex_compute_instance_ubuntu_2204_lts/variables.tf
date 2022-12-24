variable "name" {
  description = "Name for vm"
  default     = "VM"
}

variable "platform_id" {
  description = "Platform type"
  default = "standard-v1"
}

variable "cores" {
  description = "Numbers of cores"
  default = 2
}

variable "memory" {
  description = "Count of memory"
  default = 2
}

variable "subnet" {
  description = "Subnet id"
  default = ""
}