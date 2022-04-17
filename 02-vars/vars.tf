variable "example" {
  default = "Hello World"
}

output "example" {
  value = var.example
}

## Data types
# String Data type
variable "sample1" {
  default = "Hello World"
}

# Number data type
variable "sample2" {
  default = 100
}

# Boolean Data type
variable "sample3" {
  default = true
}


### Variable Types
variable "sample4" {
  type = list(string) ## optional
  default = [
    "Hello",
    1000,
    true,
    "World"
  ]
}

variable "sample5" {
  type = map(any) ## optional
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

output "sample4-1" {
  value = var.sample4[0]
}

output "sample5-1" {
  value = var.sample5["number"]
}

output "sample2" {
  value = var.sample2
}
variable "URL" {}
output "URL" {
  value = var.URL
}

variable "URL_CLI" {}
output "URL_CLI" {
  value = var.URL_CLI
}

