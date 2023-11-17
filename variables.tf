variable "resource_type" {
  description = "The resource to create a name for"
  type        = string
}

variable "resource_name" {
  description = "The resource name this will pass through the random id resource"
  type        = string
}

variable "random_byte_length" {
  description = "The number of random bytes to produce from the resource name string - default is 12"
  default = 12
  
}