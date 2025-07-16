terraform {
  backend "s3" {
    bucket         = "sharuss3"  # Change if the name already exists. 
    key            = "prod/terraform.tfstate"       
    region         = "ap-south-1"                   
    encrypt        = true
  }
}
