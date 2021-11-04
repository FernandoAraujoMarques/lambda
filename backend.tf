terraform {
  backend "s3" {
    bucket = "tf-bucket-k8s-lab"
    key    = "tfstate/terraform.tfstate"
    region = "us-east-2"
  }
}
