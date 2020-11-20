remote_state {
  backend = "s3"
  config = {
    bucket         = "nclouds-cloudprem-terrafom-state"
    dynamodb_table = "nclouds-cloudprem-terrafom-lock"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}