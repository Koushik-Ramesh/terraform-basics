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
    default = 100
}

output "op_number" {
    value = var.number
}

# Declaring a list variable
variable "sample_list" {
    default = {
        "Koushik" ,
        "Ramesh" ,
    }
}

output "print_list" {
    value = "Namaskara Bengaluru, Naanu nimma ${var.sample_list[0]} ${var.sample_list[1]}"
}