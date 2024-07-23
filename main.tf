
resource random_string main {
  length = 8
  upper = false
  special = false    
}

resource azurerm_resource_group main {
  name = "rg-${random-string.main.result}"
  location = var.location    
}

output rando {
  value = random_string.main.result  
}