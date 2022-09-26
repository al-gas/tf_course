variable "my-var"{
    description = "My Test Variable"
    type = string
    default = "Hello"
    sensetive = true
    validation {
        condition = lenght(var.my-var) > 4
        error_message = "The string must be more than 4 characters"
    }
}

# simple string type var declaration
variable "image_id"{
    type = "string"
    default = "Hello"
}

# example of list var declaration
variable "az_name" {
    type = list(string)
    default = ["us-west-1a"]
}

# example of list var with default values
variable "docker_ports" {
    type = list(object({
        internal = number
        external = number
        protocol = string
    }))
    default = [
        {
            internal = 8300
            external = 8300
            protocol = "tcp"
        }
    ]
}

output "instance_id" {
    description = "VM's Private IP"
    value = "aws_instance.my-vm.private_ip"
}