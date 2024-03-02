terraform {
  backend "remote" {  
    hostname="app.terraform.io"  
    token = "yyRRkpzskzjzuQ.atlasv1.f9EaijAOOibTbMH32jRrR4O3X2Y9f4OA8jFj8dizVAHymPoh1doMNWyPurC1tqlxamQ"
    organization = "prodxcloud" 
    workspaces {
      prefix = "prodxcloud-" 
    }
  }
}

