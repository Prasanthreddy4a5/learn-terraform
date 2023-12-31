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
      value = 50
    }
    banana = {
      price = 25
      value = true
    }
  }
}

output "fruit_stock" {
  value  = try(var.fruit_with_stock["apple"].value, 5)
}

output "fruit_stock_price" {
  value  = lookup(var.fruit_with_stock["banana"], "value", 2)
  // try(var.fruit_with_stock["apple"].price, 2)
}
