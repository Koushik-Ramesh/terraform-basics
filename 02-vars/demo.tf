# Declaring a Variable

variable "Sample" {
    default = "Hello world"
}

# Printing an ouput
output "op" {
    value = var.Sample
}

# Whenever there is a need to print variable in group of words, you need to use the bash syntax
output "ops" {
    value = "My first message is ${var.Sample}"
}

# In terraform, there is no concept of single quotes

variable "number" {
    value = 100
}

output "op_number" {
    value = var.number
}