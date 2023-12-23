variable "fruits" {
  default = [ "apple", "banana", pineapple]
}

output "fruits" {
  value = element(var.fruits,2)
}