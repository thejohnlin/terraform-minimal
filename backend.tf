terraform {
  backend "s3" {
    bucket = "deploy-argo-terraform-states"
    key    = "whateverstates"
    region = "us-west-1"
    dynamodb_table = "deploy-argo-terraform-state-lock-ddb"
  }
}