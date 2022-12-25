variable "instance_count" {
  description = "Numbers of vms"
  default     = 1
}

variable "name" {
  description = "Name for vm"
  default     = "vm"
  type        = string
}

variable "platform_id" {
  description = "Platform type"
  default     = "standard-v1"
}

variable "cores" {
  description = "Numbers of cores"
  default     = 2
}

variable "memory" {
  description = "Count of memory"
  default     = 2
}

variable "disk_size" {
  default = 10
}

variable "subnet" {
  description = "Subnet id"
  default     = ""
}

variable "nat" {
  description = "Subnet id"
  type        = bool
  default     = true
}

variable "image" {
  description = "Image family"
  default     = "ubuntu-2204-lts"
}


variable "folder_id" {
  default = ""
}