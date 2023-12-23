# Map Variable, Map of Maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 200
      price = 3
    }
    banana = {
      stock = 400
      price = 1
    }
  }
}


output "fruit_stock" {
  value = var.fruit_stock_with_price["apple"].stock
}
output "fruit_price" {
  value = var.fruit_stock_with_price["apple"].price
}