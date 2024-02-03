# Calling EC2Module
module "ec2" {
    source = "./ec2"
    sg = module.sg.sgid  # Step 2: Passing the data to the module that needs the variable over the root module
}

# Calling sgModule
module "sg" {
    source = "./sg"
}