output "ip-address-0" {
  value       = [for i in docker_container.nodered_container[*] : join(":", [i.ip_address], i.ports[*]["external"])]
  description = "The private IP Address and port of the container"
}

output "container-name-0" {
  value       = docker_container.nodered_container[*].name
  description = "This is the container name"
}