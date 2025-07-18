terraform {
  backend "s3" {
    bucket         = "sharusbk"  # Change if the name already exists. 
    key            = "prod/terraform.tfstate"       
    region         = "us-east-1"                   
    encrypt        = true
  }
}
