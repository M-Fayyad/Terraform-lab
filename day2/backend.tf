terraform {
  backend "s3" {
    bucket       = "dev-bucket-state-lab2.0"
    key          = "ec2-deployment/terraform.tfstate"
    region       = "us-east-1" 
    use_lockfile = "true"
  }
}


