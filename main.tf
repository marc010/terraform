data "yandex_compute_image" "image" {
  family = var.image
}

resource "yandex_compute_instance" "instance" {
  count = var.instance_count

  name        = "${var.name}-${count.index+1}"
  hostname    = "${var.name}-${count.index+1}"
  platform_id = "${var.platform_id}"
  zone        = "${var.zone}"
  folder_id   = "${var.folder_id}"

  resources {
    cores  = "${var.cores}"
    memory = "${var.memory}"
  }

  boot_disk {
    initialize_params {
      image_id = data.yanex_compute_image.ubuntu-2204-lts.id
      size     = "${var.disk_size}"
    }
  }

  network_interface {
    subnet_id = "${var.subnet}"
    nat       = "${var.nat}"
  }
}