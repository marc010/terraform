output "public_ip_address" {
  value = yandex_compute_instance.instance[*].network_interface.0.nat_ip_address
}