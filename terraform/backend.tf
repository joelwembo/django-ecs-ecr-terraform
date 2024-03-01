terraform {
  backend "remote" {  
    hostname="app.terraform.io"  
    token = "EiuyCS9pkvAMQA.atlasv1.1cZ4TAQxbNcgN3UsT2LzJfJOxhH6fIagQn67pZtDo57RpH9tGQerELUb1tSf4BfU7Hw"
    organization = "prodxcloud" 
    workspaces {
      prefix = "prodxcloud-" 
    }
  }
}

