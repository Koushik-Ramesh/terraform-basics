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
    default = [
        "Koushik" ,
        "Ramesh" ,
    ]
}

output "print_list" {
    value = "Namaskara Bengaluru, Naanu nimma ${var.sample_list[0]} ${var.sample_list[1]}"
}

# Declaring a MAP Variable
variable "sample_map" {
    default = {
        Name = "Koushik"
        Age = "23"
        Sex = "Male"
    }
}

# Printing a MAP variable
output "sample_map_op" {
    value = "${var.sample_map["Name"]} and my age is ${var.sample_map["Age"]} and i am a ${var.sample_map["Sex"]}"
}

# Declaring an empty variable and passing the value in the *.tfvars file #
variable "city" {}
output "city_name" {
    value = "Name of the city is ${var.city}"
}

variable "state" {}
output "state_name" {
    value = "Name of the city is ${var.state}"
}