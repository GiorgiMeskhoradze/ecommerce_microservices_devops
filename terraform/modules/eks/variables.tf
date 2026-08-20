variable "cluster_name" {
  type    = string
  default = "ecommerce-eks"
}

variable "cluster_version" {
  type    = string
  default = "1.32"
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "node_min_size" {
  type    = number
  default = 1
}

variable "node_max_size" {
  type    = number
  default = 3
}

variable "node_desired_size" {
  type    = number
  default = 2
}

variable "node_instance_types" {
  type    = list(string)
  default = ["c7i-flex.large"]
}