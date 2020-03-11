terraform {
  backend "s3" {
    bucket = "terraform-class-yunus"
    key    = "path/to/my/us-west-1"
    region = "us-east-1"
    #dynamodb_table = "terraform-class"
  }
}