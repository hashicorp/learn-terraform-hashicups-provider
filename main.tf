provider "hashicups" {
  username = "education"
  password = "test123"
}

resource "hashicups_order" "new" {
  items {
    coffee {
      id = 3
    }
    quantity = 3
  }
  items {
    coffee {
      id = 2
    }
    quantity = 1
  }
}

output "new_order" {
  value = hashicups_order.new
}

data "hashicups_ingredients" "first_coffee" {
  coffee_id = hashicups_order.new.items[0].coffee[0].id
}

output "first_coffee_ingredients" {
  value = data.hashicups_ingredients.first_coffee
}
