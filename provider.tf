provider "aws" {
  
}
# terraform {
#   backend "s3" {
#       bucket = "state-file-pk"
#       region = "ap-south-1"
#       key = "terraform.tfstate" #path where state file is created/located
#       dynamodb_table = "my-dynamo-db-table"
#       encrypt = true  
#   }
# }