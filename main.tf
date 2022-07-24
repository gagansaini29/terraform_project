#by using locals
resource "local_file" "file1" {
    filename=local.name0
    content=local.content0
}

locals {
  name0="Test1.txt"
  content0="This is Terraform Assingment"
}

#by using random
resource "local_file" "file2" {
    filename = local.name1
    content="${random_id.content.hex}"
  
}
locals {
  name1="file1.txt"
  content1="Hi this is Gagan Saini"
}

resource "random_id" "content" {
  byte_length=6
}

#By using Variables
# by using String
resource "local_file" "file3" {
    filename="string.txt"
    content=var.string
}

#by usnig number
resource "local_file" "file4" {
  filename="number.txt"
  content=var.number
}

#by using list
resource "local_file" "file5" {
  filename="list.txt"
  content=var.list1[0]
}

#by using map
resource "local_file" "file6" {
  filename="map.txt"
  content=var.map["key1"]
}

#by using object
resource "local_file" "object" {
  filename="object.txt"
  content=var.object["content"]
}

#by using tfvars
resource "local_file" "tfvars" {
  filename=var.name
  content=var.content
}

#by using Output 
resource "local_file" "nineth" {
  filename = var.name
  content = var.content
}
output "output_name" {
  value = local_file.file1.content
}