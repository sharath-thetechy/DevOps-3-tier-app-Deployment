terraform {
  backend "s3" {
    bucket         = "sharuss3"  # Change if the name already exists. 
    key            = "eks/terraform.tfstate"       
    region         = "ap-south-1"                   
    encrypt        = true
  }
}
