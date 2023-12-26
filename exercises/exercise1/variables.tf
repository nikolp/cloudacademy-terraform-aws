variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "workstation_ip" {
  type = string
# specifying exact ip cidr does not work reliably
  default = "0.0.0.0/0"
}

# Only tested in us-east-1
# Also note the example terraform.tfvars shows subnets only on us-east-1
variable "amis" {
  type = map(any)
  default = {
    "us-east-2" : "ami-08e6b682a466887dd"
    "us-west-2" : "ami-0af6e2b3ada249943"
    "us-east-1": "ami-079db87dc4c10ac91"
  }
}
