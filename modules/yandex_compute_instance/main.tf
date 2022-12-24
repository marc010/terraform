terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

data "yandex_compute_image" "image" {
  family = var.image
}

resource "yandex_compute_instance" "instance" {
  count = var.instance_count

  name        = "${var.name}-${count.index+1}"
  hostname    = "${var.name}-${count.index+1}"
  platform_id = "${var.platform_id}"
  folder_id   = "${var.folder_id}"

  resources {
    cores  = "${var.cores}"
    memory = "${var.memory}"
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.id 
      size     = "${var.disk_size}"
    }
  }

  network_interface {
    subnet_id = "${var.subnet}"
    nat       = "${var.nat}"
  }
}