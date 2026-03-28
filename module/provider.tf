provider "aws" {
  region  = "ap-northeast-1"
  profile = "harshal"

}

terraform {
  backend "s3" {
    bucket  = "asdfghjkl"
    region  = "ap-northeast-1"
    key     = "backend/terraform.tfstate"
    profile = "harshal"

  }
}
