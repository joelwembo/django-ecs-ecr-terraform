terraform {
  backend "remote" {  
    hostname="app.terraform.io"  
    token = ""
    organization = "prodxcloud" 
    workspaces {
      prefix = "prodxcloud-" 
    }
  }
}

