#variable "fruits" {
#  default = [ "apple", "banana", "pineapple"]
#}
#
#output "fruits" {
#  value = element(var.fruits,2)
#}



variable "fruit_with_stock" {
  default = {
    apple = {
      stock = 100
    banana = {
      price = 25
    }
    }
  }
}

output "fruit_stock" {
  value  = try($[var.fruit_with_stock["banana"]].price, 0)
}
