terraform {
  backend "s3" {
    bucket         = "ecommerce-microservices-tfstate-devops"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}