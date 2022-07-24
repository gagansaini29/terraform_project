#for String
variable "string" {
  type=string
  description = "This is for string"
  default="This is default variables"
}

variable "content" {
  type=string
  default="This is default content"
}

#for Number
variable "number" {
  type=number
  description="This is for Number"
  default = 4891414561
}

#for List
variable "list1" {
  type = list(any)
  description = "This is for list"
  default = ["Hi","how","are","you","!!!",25,534]
}

#for Map
variable "map" {
  type= map(any)
  description = "This is for map"
  default = {
    "key1" = "Gagan"
    "key2" = "Saini"
  }
}

#for object
variable "object" {
  type=object({
  name=string
  content=string
  })
  description = "This is for object"
  default = {
    content = "Hi this is Content"
    name = "object"
  }
}

#for tfvars
variable "name" {
  type=string
  default="this is for tfvars"
}

variable "output" {
    type = string
    default = "Content for Output Block"
}