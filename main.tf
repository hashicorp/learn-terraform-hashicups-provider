terraform {
  required_providers {
    hashicups = {
      versions = ["0.2"]
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {
  host = "https://2886795279-19090-frugo04.environments.katacoda.com"
  username = "education"
  password = "test123"
}

resource "hashicups_order" "edu" {
  items {
    coffee {
      id = 3
    }
    quantity = 2
  }
  items {
    coffee {
      id = 2
    }
    quantity = 2
  }
}

output "edu_order" {
  value = hashicups_order.edu
}
