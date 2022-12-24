data "yandex_compute_image" "ubuntu-2204-lts" {
  family = "ubuntu-2204-lts"
}

resource "yandex_compute_instance" "instance" {

  name     = "${var.name}"
  hostname = "${var.name}"
  platform_id = "${var.platform_id}"

  resources {
    cores = "${var.cores}"
    memory = "${var.memory}"
  }

  boot_disk {
    initialize_params {
      image_id = data.yanex_compute_image.ubuntu-2204-lts.id
    }
  }

  network_interface {
    subnet_id = "${var.subnet}"
    nat = true
  }
}