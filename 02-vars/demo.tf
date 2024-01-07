# Declaring a Variable

variable "Sample" {
    default = "Hello world"
}

# Printing an ouput
output "op" {
    value = var.sample
}